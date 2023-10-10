import 'package:flutter/material.dart';

import 'package:latihan_bloc/pages/widget/value_state_widget.dart';

class DataState extends StatelessWidget {
  const DataState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: const ValueState(),
    );
  }
}
