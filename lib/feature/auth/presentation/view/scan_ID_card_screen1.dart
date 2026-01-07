import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/route/route.dart';
import '../viewModel/scan_id_provider.dart';
import '../../../../core/global_widgets/Custom_text.dart';


class ScanIdCardScreen1 extends ConsumerStatefulWidget {
  const ScanIdCardScreen1({super.key});

  @override
  ConsumerState<ScanIdCardScreen1> createState() =>
      _ScanIdCardScreenState();
}

class _ScanIdCardScreenState
    extends ConsumerState<ScanIdCardScreen1> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(cameraProvider.notifier).initCamera();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cameraState = ref.watch(cameraProvider);

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Scan ID Card",color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          /// 📷 Camera Background
          if (!cameraState.isLoading &&
              cameraState.controller != null)
            Positioned.fill(
              child: CameraPreview(
                cameraState.controller!,
              ),
            )
          else
            const Center(child: CircularProgressIndicator()),

          /// Dark overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.45),
            ),
          ),

          /// UI
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30),

                /// Title
                const Text(
                  'Take a photo the front of your\nID card',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),

                /// Subtitle
                const Text(
                  'Place your ID card in the frame below',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 40),

                /// 🔲 Scan Frame
                Expanded(
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// ✅ Verify Button (ADDED)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.scanIdCardScreen2
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
