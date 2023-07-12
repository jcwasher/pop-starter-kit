import 'package:js/js.dart';
import 'package:html/dom.dart' as html;

@JS()
external void onAnchorTap(
  String? url,
  Map<String, String> attributes,
  html.Element? element,
);
