import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/route/route_name.dart';
import '../viewModel/scan_id_provider.dart';

class ScanIdCardScreen2 extends ConsumerStatefulWidget {
  const ScanIdCardScreen2({super.key});

  @override
  ConsumerState<ScanIdCardScreen2> createState() => _ScanIdCardScreenState();

}

class _ScanIdCardScreenState extends ConsumerState<ScanIdCardScreen2> {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,  // button width
                        height: 60,  // button height
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                                RouteName.scanIdCardScreen1
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff383838),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: CustomText(
                            text: "Retake",
                            size: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // spacing between buttons
                      SizedBox(
                        width: 150,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                                RouteName.confirmIdentityScreen
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEDDF99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}


