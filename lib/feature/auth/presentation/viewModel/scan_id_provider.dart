import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final cameraProvider =
StateNotifierProvider<CameraNotifier, CameraState>(
      (ref) => CameraNotifier(),
);

class CameraState {
  final CameraController? controller;
  final bool isLoading;

  CameraState({
    this.controller,
    this.isLoading = true,
  });
}

class CameraNotifier extends StateNotifier<CameraState> {
  CameraNotifier() : super(CameraState());

  Future<void> initCamera() async {
    try {
      final cameras = await availableCameras();
      final controller = CameraController(
        cameras.first,
        ResolutionPreset.high,
        enableAudio: false,
      );
      await controller.initialize();

      state = CameraState(
        controller: controller,
        isLoading: false,
      );
    } catch (e) {
      state = CameraState(isLoading: false);
    }
  }

  Future<void> takePicture() async {
    if (state.controller == null) return;
    final image = await state.controller!.takePicture();
    print("Captured: ${image.path}");
  }

  @override
  void dispose() {
    state.controller?.dispose();
    super.dispose();
  }
}
