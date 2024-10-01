import 'package:daily_battle/core/services/enemies_service.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<String> content;

  void fetchContent() {
    content = EnemiesService.fetchEnemyInfo();
  }

  @override
  void initState() {
    super.initState();

    fetchContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Daily Battle'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => ProfileScreen(
                    appBar: AppBar(
                      title: const Text('Meu Perfil'),
                    ),
                    actions: [
                      SignedOutAction((context) {
                        Navigator.of(context).pop();
                      })
                    ],
                  ),
                ),
              );
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<String>(
          future: content,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.toString());
            } else if (snapshot.hasError) {
              return Text('Snapshot Error: ${snapshot.error}');
            }

            return const CircularProgressIndicator();
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchContent,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}