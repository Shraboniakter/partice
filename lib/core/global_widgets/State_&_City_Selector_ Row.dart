import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StateCitySelector extends StatefulWidget {
  const StateCitySelector({super.key});

  @override
  State<StateCitySelector> createState() => _StateCitySelectorState();
}

class _StateCitySelectorState extends State<StateCitySelector> {
  String selectedState = 'California';
  String selectedCity = 'San Diego';

  final List<String> states = [
    'California',
    'Texas',
    'New York',
  ];

  final List<String> cities = [
    'San Diego',
    'Los Angeles',
    'San Francisco',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// State
        Expanded(
          child: _dropdownItem(
            label: 'Select State',
            value: selectedState,
            items: states,
            onChanged: (val) {
              setState(() => selectedState = val);
            },
          ),
        ),

        SizedBox(width: 16.w),

        /// City
        Expanded(
          child: _dropdownItem(
            label: 'Select City',
            value: selectedCity,
            items: cities,
            onChanged: (val) {
              setState(() => selectedCity = val);
            },
          ),
        ),
      ],
    );
  }

  Widget _dropdownItem({
    required String label,
    required String value,
    required List<String> items,
    required Function(String) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14.sp,
          ),
        ),

        SizedBox(height: 8.h),
        DropdownButtonFormField<String>(
          value: value,
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
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white70),
          items: items.map((item) => DropdownMenuItem(
            value: item,
            child: Text(item, style: TextStyle(fontSize: 14.sp, color:  Color(0xff3A3B3F),)),
          )).toList(),
          onChanged: (val) => onChanged(val!),
        )




      ],
    );
  }
}
