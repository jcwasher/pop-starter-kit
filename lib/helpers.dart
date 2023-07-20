import 'package:js/js.dart';
import 'package:html/dom.dart' as html;

const baseUrl = 'https://www.pawsofprey.com';

@JS()
external void onAnchorTap(
  String? url,
  Map<String, String> attributes,
  html.Element? element,
);
