import 'package:flutter/material.dart';

import 'package:latihan_bloc/pages/home_page/widget/value_state_widget.dart';

class DataState extends StatelessWidget {
  const DataState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: const ValueState(),
    );
  }
}
