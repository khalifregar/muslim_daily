import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/features/auth/data/models/request/login_request.dart';
import 'package:muslim_daily/features/auth/data/models/request/register_request.dart';
import 'package:muslim_daily/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:muslim_daily/injection.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(isLogin ? 'Login' : 'Register'),
          centerTitle: true,
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              loadSuccess: (user) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Selamat datang, ${user.name ?? 'User'}!'),
                    backgroundColor: Colors.green,
                  ),
                );
                Future.delayed(const Duration(milliseconds: 600), () {
                  Navigator.pushReplacementNamed(context, '/home');
                });
              },
              loadFailure: (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(failure.message ?? 'Terjadi kesalahan'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loadInProgress: () => true,
              orElse: () => false,
            );

            return Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 40),
                          if (!isLogin)
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(labelText: 'Nama'),
                              validator: (value) =>
                                  value!.isEmpty ? 'Nama tidak boleh kosong' : null,
                            ),
                          const SizedBox(height: 12),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(labelText: 'Email'),
                            validator: (value) =>
                                value!.isEmpty ? 'Email tidak boleh kosong' : null,
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(labelText: 'Password'),
                            validator: (value) =>
                                value!.length < 6 ? 'Minimal 6 karakter' : null,
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: isLoading
                                  ? null
                                  : () {
                                      if (_formKey.currentState!.validate()) {
                                        final cubit = context.read<AuthCubit>();
                                        if (isLogin) {
                                          cubit.login(
                                            LoginRequest(
                                              email: emailController.text.trim(),
                                              password: passwordController.text,
                                            ),
                                          );
                                        } else {
                                          cubit.register(
                                            RegisterRequest(
                                              name: nameController.text.trim(),
                                              email: emailController.text.trim(),
                                              password: passwordController.text,
                                              passwordConfirmation: passwordController.text,
                                            ),
                                          );
                                        }
                                      }
                                    },
                              child: Text(isLogin ? 'Login' : 'Register'),
                            ),
                          ),
                          const SizedBox(height: 12),
                          TextButton(
                            onPressed: () => setState(() => isLogin = !isLogin),
                            child: Text(
                              isLogin
                                  ? 'Belum punya akun? Daftar'
                                  : 'Sudah punya akun? Masuk',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (isLoading)
                  Container(
                    color: Colors.black.withOpacity(0.3),
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
