import 'package:flutter/material.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsApp.wihteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 30,
              color: ColorsApp.blackLight,
            ),
            Expanded(
              child: AppTextFormField(
                inputTextStyle: TextStyles.font16blackLightMedium,
                backgroundColor: Colors.transparent,
                hintText: 'Search',
                hintStyle: TextStyles.font16darkGreen,
                validator: (value) {},
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
