import 'package:flutter/material.dart';
import 'package:partice/core/global_widgets/ProfileAvatar.dart';
import 'package:partice/core/util/assetpaths.dart';

class CompleteYourProfileScreen extends StatelessWidget {
  const CompleteYourProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(color: Colors.white24, thickness: 1),
                SizedBox(height: 24,),
                Center(
                  child:
                  ProfileAvatar(imagePath: Assetpaths.profile, onEdit:(){
                    print("shrabon");

                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
