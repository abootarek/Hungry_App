import 'package:flutter/material.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/featuers/home/ui/widgets/grid_view_category_custon.dart';
import 'package:hungry/featuers/home/ui/widgets/search_text_form_field.dart';
import 'package:hungry/featuers/home/ui/widgets/titel_and_name_iamge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndNameAndImage(),
              verticalSpace(17),
              // SearchTextFormField(),
              SearchTextFormField(),
              verticalSpace(32),
              // categry Grid View
              SizedBox(
                height: 450,
                child: GridViewCategoryCustom(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
