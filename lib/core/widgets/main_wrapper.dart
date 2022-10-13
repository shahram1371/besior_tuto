import 'package:be_senior/features/feature_weather/presentation/bloc/cw_status.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    print('initState');
    BlocProvider.of<HomeBloc>(context)
        .add(const LoadCwEvent(cityname: 'tehran'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (BuildContext context, state) {
            if (state.cwStatus is CwLoading) {
              return const Center(
                child: Text('loading...'),
              );
            }
            if (state.cwStatus is CwCompleted) {
              return const Center(
                child: Text('completed'),
              );
            }
            if (state.cwStatus is CwError) {
              return const Center(
                child: Text('error'),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
