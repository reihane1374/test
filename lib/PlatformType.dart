import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class PlatformType{
  String platform="";
  String platformTypeVal(){
    if (defaultTargetPlatform == TargetPlatform.iOS)
      platform="ios";
     else if(defaultTargetPlatform == TargetPlatform.android)
      platform="android";
     else;

    return platform;
  }
}