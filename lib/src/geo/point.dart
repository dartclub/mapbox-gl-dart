library mapboxgl.geo.point;

import 'package:mapbox_gl_dart/src/interop/interop.dart';

class PointTwo extends JsObjectWrapper<PointJsImpl> {
  num get x => jsObject.x;
  num get y => jsObject.y;

  factory PointTwo(
    num x,
    num y,
  ) =>
      PointTwo.fromJsObject(PointJsImpl(
        x: x,
        y: y,
      ));

  /// Creates a new LngLat from a [jsObject].
  PointTwo.fromJsObject(PointJsImpl jsObject) : super.fromJsObject(jsObject);
}
