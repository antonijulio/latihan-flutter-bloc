import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:latihan_bloc/bloc/counter_bloc.dart';

class ValueState extends StatelessWidget {
  const ValueState({super.key});

  @override
  Widget build(BuildContext context) {
    //bloc provider
    final myCounter = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<CounterBloc, int>(
      bloc: myCounter,
      builder: (context, state) {
        return Text(
          '$state',
          style: GoogleFonts.poppins(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey.shade700,
          ),
        );
      },
    );
  }
}
