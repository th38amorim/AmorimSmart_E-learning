import 'package:flutter/material.dart';

class FilterTextFieldWidget extends StatelessWidget {
  const FilterTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color(0XFF8E8E93)
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0XFF48484A),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        SizedBox(
          height: 54,
          width: 54,
          child: ElevatedButton(
            child: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}