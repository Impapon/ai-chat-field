
import 'dart:async';
//import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:lottie/lottie.dart';
//import 'package:swoop_news/url_index/url_index.dart';
/*
class InternetConnectivity extends StatefulWidget {
  final Widget child;
  const InternetConnectivity({Key? key, required this.child}) : super(key: key);

  @override
  State<InternetConnectivity> createState() => _InternetConnectivityState();
}

class _InternetConnectivityState extends State<InternetConnectivity> {

  ConnectivityResult _connectionStatus = ConnectivityResult.wifi;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
  Future<void> initConnectivity() async {

    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {return;}

    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return  Scaffold(
      body:_connectionStatus == ConnectivityResult.none?SizedBox(
        height: height,
        width: width,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(height: width * 0.2,),
                Lottie.asset("assets/no_internet/wifi.json",fit: BoxFit.fitWidth),
              ],
            ),
            Column(
              children: [
                SizedBox(height: width * 0.7,),
                Lottie.asset("assets/no_internet/person_lottie.json",fit: BoxFit.fitWidth),
              ],
            ),
          ],
        ),
      ):widget.child,
    );
  }
}*/
