import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_bloc/bloc/counter_bloc.dart';

class ValuePage extends StatelessWidget {
  const ValuePage({super.key});

  @override
  Widget build(BuildContext context) {
    final myCounter = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Value'),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: BlocBuilder(
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
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }
}
