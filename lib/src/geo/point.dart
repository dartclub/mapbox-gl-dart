library mapboxgl.geo.point;

import 'package:mapbox_gl_dart/src/interop/interop.dart';

class ScreenOffset extends JsObjectWrapper<PointJsImpl> {
  num get x => jsObject.x;
  num get y => jsObject.y;

  factory ScreenOffset(
    num x,
    num y,
  ) =>
      ScreenOffset.fromJsObject(PointJsImpl(
        x: x,
        y: y,
      ));

  /// Creates a new LngLat from a [jsObject].
  ScreenOffset.fromJsObject(PointJsImpl jsObject)
      : super.fromJsObject(jsObject);
}
