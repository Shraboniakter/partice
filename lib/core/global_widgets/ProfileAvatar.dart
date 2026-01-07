import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final VoidCallback onEdit;

  const ProfileAvatar({
    super.key,
    required this.imagePath,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Profile Image
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white24,
              width: 2,
            ),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Edit Button
        Positioned(
          bottom: 6,
          right: 6,
          child: GestureDetector(
            onTap: onEdit,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Color(0xffEDDF99),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Icon(
                Icons.edit,
                size: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
