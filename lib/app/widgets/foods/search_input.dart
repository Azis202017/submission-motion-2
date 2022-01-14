import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 8,
        ),
        hintText: 'Search Food',
        hintStyle: body1.copyWith(
          color: grey,
        ),
        prefixIcon: const Icon(
          Icons.search,
        ),
        border: InputBorder.none,
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: grey,
            width: 1,
          ),
        ),
        focusColor: grey,
      ),
    );
  }
}
