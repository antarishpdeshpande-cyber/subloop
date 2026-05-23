import 'package:cloud_firestore/cloud_firestore.dart';

enum BillingCycle { monthly, yearly, weekly }

class Subscription {
  final String id;
  final String name;
  final double cost;
  final String currency;
  final String categoryId;
  final DateTime nextRenewalDate;
  final BillingCycle billingCycle;
  final String? description;
  final String userId;

  Subscription({
    required this.id,
    required this.name,
    required this.cost,
    required this.currency,
    required this.categoryId,
    required this.nextRenewalDate,
    required this.billingCycle,
    this.description,
    required this.userId,
  });

  factory Subscription.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Subscription(
      id: doc.id,
      name: data['name'] ?? '',
      cost: (data['cost'] ?? 0.0).toDouble(),
      currency: data['currency'] ?? 'USD',
      categoryId: data['categoryId'] ?? '',
      nextRenewalDate: (data['nextRenewalDate'] as Timestamp).toDate(),
      billingCycle: BillingCycle.values.firstWhere(
        (e) => e.name == data['billingCycle'],
        orElse: () => BillingCycle.monthly,
      ),
      description: data['description'],
      userId: data['userId'] ?? '',
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'cost': cost,
      'currency': currency,
      'categoryId': categoryId,
      'nextRenewalDate': Timestamp.fromDate(nextRenewalDate),
      'billingCycle': billingCycle.name,
      'description': description,
      'userId': userId,
    };
  }
}
