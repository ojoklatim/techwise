import 'package:flutter/material.dart';
import '../models/summary_card_model.dart';
import '../models/activity_model.dart';
import '../models/transaction_model.dart';

final List<SummaryCardModel> summaryCards = [
  SummaryCardModel(
    title: 'Total Sales',
    value: '\$48,295',
    subtitle: '+12% this month',
    colorHex: 0xFF4F46E5,
    icon: Icons.monetization_on_outlined,
  ),
  SummaryCardModel(
    title: 'New Users',
    value: '1,284',
    subtitle: '+8% this week',
    colorHex: 0xFF0891B2,
    icon: Icons.person_outline,
  ),
  SummaryCardModel(
    title: 'Active Projects',
    value: '23',
    subtitle: '4 due this week',
    colorHex: 0xFF059669,
    icon: Icons.folder_open_outlined,
  ),
  SummaryCardModel(
    title: 'Open Tickets',
    value: '17',
    subtitle: '3 urgent',
    colorHex: 0xFFDC2626,
    icon: Icons.confirmation_number_outlined,
  ),
];

final List<ActivityModel> recentActivities = [
  ActivityModel(title: 'New sale recorded', description: 'Order #4521 — \$340.00', time: '2 min ago', type: 'sale'),
  ActivityModel(title: 'User registered', description: 'jane.doe@email.com', time: '15 min ago', type: 'user'),
  ActivityModel(title: 'Project updated', description: 'Website Redesign — milestone reached', time: '1 hr ago', type: 'alert'),
  ActivityModel(title: 'New sale recorded', description: 'Order #4520 — \$120.50', time: '2 hr ago', type: 'sale'),
  ActivityModel(title: 'User registered', description: 'mark.jones@email.com', time: '3 hr ago', type: 'user'),
];

final List<TransactionModel> transactions = [
  TransactionModel(id: '#4521', name: 'Alice Johnson', amount: 340.00, date: 'Jun 8, 2026', status: 'completed'),
  TransactionModel(id: '#4520', name: 'Bob Martinez', amount: 120.50, date: 'Jun 8, 2026', status: 'completed'),
  TransactionModel(id: '#4519', name: 'Carol White', amount: 89.99, date: 'Jun 7, 2026', status: 'pending'),
  TransactionModel(id: '#4518', name: 'David Lee', amount: 560.00, date: 'Jun 7, 2026', status: 'completed'),
  TransactionModel(id: '#4517', name: 'Eva Green', amount: 45.00, date: 'Jun 6, 2026', status: 'failed'),
  TransactionModel(id: '#4516', name: 'Frank Brown', amount: 210.75, date: 'Jun 6, 2026', status: 'completed'),
  TransactionModel(id: '#4515', name: 'Grace Kim', amount: 99.00, date: 'Jun 5, 2026', status: 'pending'),
];
