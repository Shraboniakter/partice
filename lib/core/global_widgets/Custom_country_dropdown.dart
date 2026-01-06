import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  State<CountryDropdown> createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String selectedCountry = 'United States of America';

  final List<String> countries = [
    'United States of America',
    'Canada',
    'United Kingdom',
    'India',
    'Bangladesh',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        /// Dropdown Container
        DropdownButtonFormField<String>(
          value: selectedCountry,
          dropdownColor: const Color(0xff1C1C1E),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Colors.white24),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Color(0xffEDDF99), width: 2),
            ),
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white70,
          ),
          style: TextStyle(
            color: Color(0xff3A3B3F),
            fontSize: 14.sp,
          ),
          items: countries.map((country) {
            return DropdownMenuItem(
              value: country,
              child: Text(country),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCountry = value!;
            });
          },
        )

      ],
    );
  }
}
