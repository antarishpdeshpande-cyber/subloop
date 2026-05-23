import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubscriptionDashboard extends ConsumerWidget {
  const SubscriptionDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SubLoop Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.analytics_outlined),
            onPressed: () {
              // Navigate to analytics
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5, // Mock data count
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return const SubscriptionCard();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Open add subscription screen
        },
        label: const Text('Add Subscription'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.movie),
        ),
        title: const Text('Netflix'),
        subtitle: const Text('Renews in 5 days'),
        trailing: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$15.99',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text('Monthly'),
          ],
        ),
        onTap: () {
          // Open edit subscription
        },
      ),
    );
  }
}
