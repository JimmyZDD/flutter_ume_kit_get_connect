///
/// [Author] Alex (https://github.com/AlexV525)
/// [Date] 2021/8/6 11:24
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_ume/core/pluggable.dart';

import 'models/http_interceptor.dart';
import 'widgets/icon.dart' as icon;
import 'widgets/pluggable_state.dart';

// TODO(Alex): Implement [PluggableStream] for dot features.
/// Implement a [Pluggable] to integrate with UME.
class GetConnectInspector extends StatefulWidget implements Pluggable {
  GetConnectInspector({Key? key, required this.connect}) : super(key: key) {
    connect.httpClient
        .addRequestModifier<void>(UMEGetConnectInspector.requestInterceptor);
    connect.httpClient
        .addResponseModifier(UMEGetConnectInspector.responseInterceptor);
  }

  final GetConnect connect;

  @override
  GetConnectPluggableState createState() => GetConnectPluggableState();

  @override
  ImageProvider<Object> get iconImageProvider => MemoryImage(icon.iconBytes);

  @override
  String get name => 'HttpInspector';

  @override
  String get displayName => 'HttpInspector';

  @override
  void onTrigger() {}

  @override
  Widget buildWidget(BuildContext? context) => this;
}
