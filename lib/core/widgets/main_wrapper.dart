import 'package:be_senior/core/widgets/bottom_nav.dart';
import 'package:be_senior/features/feature_bookmark/presentation/screens/bookmark_screen.dart';
import 'package:be_senior/features/feature_weather/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  final PageController pageController = PageController(initialPage: 0);
  final List<Widget> pageViewWidget = [
    const HomeScreen(),
    const BookMarkScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNav(Controller: pageController),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: pageController,
          children: pageViewWidget,
        ),
      ),
    );
  }
}














// class MainWrapper extends StatefulWidget {
//   const MainWrapper({super.key});

//   @override
//   State<MainWrapper> createState() => _MainWrapperState();
// }

// class _MainWrapperState extends State<MainWrapper> {
//   @override
//   void initState() {
//     BlocProvider.of<HomeBloc>(context).add(LoadCwEvent(cityname: 'tehran'));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             if (state.cwStatus is CwLoading) {
//               return const Center(
//                 child: Text('loading...'),
//               );
//             }
//             if (state.cwStatus is CwCompleted) {
//               final CwCompleted cwCompleted = state.cwStatus as CwCompleted;
//               final CurentCityEntity curentCityEntity =
//                   cwCompleted.curentCityEntity;
//               return Center(
//                 child: Text(curentCityEntity.name!),
//               );
//             }
//             if (state.cwStatus is CwError) {
//               final CwError cwError = state.cwStatus as CwError;
//               final String message = cwError.message;
//               return Center(
//                 child: Text(message),
//               );
//             } else {
//               return Container();
//             }
//           },
//         ));
//   }
// }