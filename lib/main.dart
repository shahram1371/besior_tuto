import 'package:be_senior/core/widgets/main_wrapper.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/home_bloc.dart';
import 'package:be_senior/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  // / init locator
  await setup();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(providers: [
      BlocProvider<HomeBloc>(
        create: (_) => locator<HomeBloc>(),
      )
    ], child: const MainWrapper()),
  ));
}
