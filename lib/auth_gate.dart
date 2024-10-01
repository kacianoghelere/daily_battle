import 'package:daily_battle/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider, AuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    List<AuthProvider> authProviders = [
      EmailAuthProvider()
    ];

    if (dotenv.env['GOOGLE_WEB_CLIENT_ID'] != null) {
      authProviders.add(GoogleProvider(clientId: dotenv.env['GOOGLE_WEB_CLIENT_ID']!));
    }

    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: authProviders,
            headerBuilder: (context, constraints, shrinkOffset) {
              return const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Daily Battle')
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Bem vindo ao Daily Battle!'),
                    action == AuthAction.signIn
                      ? const Text('Por favor, acesse sua conta.')
                      : const Text('Por favor, crie uma conta.')
                  ],
                ),
              );
            },
            footerBuilder: (context, action) {
              return const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'By signing in, you agree to our terms and conditions.',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
          );
        }

        return const HomeScreen();
      },
    );
  }
}
