import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/mock_data.dart';
import '../theme/app_theme.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  Color _statusColor(String status) {
    switch (status) {
      case 'completed': return AppColors.green;
      case 'pending':   return AppColors.amber;
      default:          return AppColors.red;
    }
  }

  Color _statusBg(String status) {
    switch (status) {
      case 'completed': return AppColors.greenLight;
      case 'pending':   return AppColors.amberLight;
      default:          return AppColors.redLight;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              decoration: const BoxDecoration(
                color: AppColors.ink,
                // NO borderRadius
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${transactions.length} records — June 2026',
                    style: GoogleFonts.dmSans(fontSize: 13, color: AppColors.inkFaint),
                  ),
                ],
              ),
            ),

            // List
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: transactions.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final t = transactions[index];
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.parchment,
                      border: Border.all(color: AppColors.border),
                      // NO borderRadius — sharp
                    ),
                    child: Row(
                      children: [
                        // Icon block — sharp square
                        Container(
                          width: 40,
                          height: 40,
                          color: AppColors.coralLight,
                          child: const Icon(Icons.receipt_long, color: AppColors.coral, size: 18),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.name,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: AppColors.ink,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                '${t.id} · ${t.date}',
                                style: GoogleFonts.dmSans(fontSize: 12, color: AppColors.inkFaint),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${t.amount.toStringAsFixed(2)}',
                              style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: AppColors.ink,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              color: _statusBg(t.status),
                              child: Text(
                                t.status.toUpperCase(),
                                style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: _statusColor(t.status),
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
