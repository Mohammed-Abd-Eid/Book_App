import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/search/manger/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return TextField(
      onSubmitted: (value) =>
          BlocProvider.of<SearchCubit>(context).searchBook(searchText: value),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: "Search",
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
      ),
      controller: controller,
    );
  }
}
