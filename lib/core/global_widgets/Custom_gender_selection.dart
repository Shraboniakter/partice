import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _genderItem("Male"),
            _genderItem("Female"),
            _genderItem("Third Gender"),
          ],
        ),
      ],
    );
  }

  Widget _genderItem(String title) {
    final bool isSelected = selectedGender == title;

    return InkWell(
      onTap: () {
        setState(() {
          selectedGender = title;
        });
      },
      child: Row(
        children: [
          Container(
            height: 18.w,
            width: 18.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ?Color(0xffEDDF99) : Colors.white54,
                width: 1.5,
              ),
            ),
            child: isSelected
                ? Center(
              child: Container(
                height: 8.w,
                width: 8.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEDDF99),
                ),
              ),
            )
                : const SizedBox(),
          ),
          SizedBox(width: 8.w),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
