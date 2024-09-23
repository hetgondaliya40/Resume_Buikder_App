import 'dart:async';

import 'package:flutter/material.dart';

import '../Resumbuilderapp/routes/routes.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.home);
      // Navigator.pushNamed(context, Routes.home);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //title: Text("Splash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network(
              "https://res.cloudinary.com/practicaldev/image/fetch/s--DJTjT7lf--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://cdn-images-1.medium.com/max/2800/1*TjXUGjDSTAR-H3O2M9M50A.gif"),
          Spacer(),
          LinearProgressIndicator(
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
