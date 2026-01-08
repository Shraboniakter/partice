import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partice/core/global_widgets/Custom_text.dart';

import '../../../../core/global_widgets/CornerPainter.dart';
import '../../../../core/route/route_name.dart';
import '../viewModel/scan_id_provider.dart';


class ScanIdCardScreen extends ConsumerStatefulWidget {
  const ScanIdCardScreen({super.key});

  @override
  ConsumerState<ScanIdCardScreen> createState() =>
      _ScanIdCardScreenState();
}

class _ScanIdCardScreenState
    extends ConsumerState<ScanIdCardScreen> {
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
            const Center(
              child: CircularProgressIndicator(),
            ),

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
                        ..._buildCorners(),
                      ],
                    ),
                  ),
                ),

                /// Buttons
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: [
                      _circleButton(Icons.photo_library),
                      GestureDetector(
                        onTap: () {
                          ref
                              .read(cameraProvider.notifier)
                              .takePicture();
                        },
                        child: _captureButton(),
                      ),
                      _circleButton(Icons.refresh),
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

  /// UI helpers (same as your design)
  Widget _captureButton() {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(
            context,
            RouteName.scanIdCardScreen1
        );
      },

      child: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: Color(0xFFE9D37D),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.camera_alt,
          size: 32,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _circleButton(IconData icon) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }

  List<Widget> _buildCorners() {
    const double size = 30;
    const double stroke = 3;

    return [
      Positioned(top: 0, left: 0, child: _corner(size, stroke, true, true)),
      Positioned(top: 0, right: 0, child: _corner(size, stroke, false, true)),
      Positioned(bottom: 0, left: 0, child: _corner(size, stroke, true, false)),
      Positioned(bottom: 0, right: 0, child: _corner(size, stroke, false, false)),
    ];
  }

  Widget _corner(double size, double stroke, bool left, bool top) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: CornerPainter(
          stroke: stroke,
          left: left,
          top: top,
        ),
      ),
    );
  }
}

