import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:partice/core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/DocumentCard.dart';

import '../../../../core/route/route_name.dart';

final selectedDocumentProvider =
StateProvider<String>((ref) => 'National ID Card');

class SelectDocumentTypeScreen extends ConsumerWidget {
  const SelectDocumentTypeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDoc = ref.watch(selectedDocumentProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: Colors.white24, thickness: 1),
              const SizedBox(height: 24),
        
              CustomText(
                text: "Select Document Type",
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
        
              CustomText(
                text: "We need to verify your identity as a proof",
                size: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 24),
        
              /// ✅ Cards
              DocumentCard(
                title: 'National ID Card',
                icon: Icons.credit_card,
                isSelected: selectedDoc == 'National ID Card',
                onTap: () {
                  ref.read(selectedDocumentProvider.notifier).state =
                  'National ID Card';
                },
              ),
              DocumentCard(
                title: 'Passport',
                icon: Icons.public,
                isSelected: selectedDoc == 'Passport',
                onTap: () {
                  ref.read(selectedDocumentProvider.notifier).state =
                  'Passport';
                },
              ),
              DocumentCard(
                title: 'Driver License',
                icon: Icons.directions_car,
                isSelected: selectedDoc == 'Driver License',
                onTap: () {
                  ref.read(selectedDocumentProvider.notifier).state =
                  'Driver License';
                },
              ),
              SizedBox(height: 300),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                        RouteName.scanIdCardScreen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEDDF99),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding:
                    const EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: CustomText(
                    text: "Continue",
                    size: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
