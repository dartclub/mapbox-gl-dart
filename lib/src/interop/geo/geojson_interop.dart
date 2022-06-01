@JS('mapboxgl')
library mapboxgl.interop.geo.geojson;

import 'package:js/js.dart';

@JS()
@anonymous
class FeatureCollectionJsImpl {
  external String get type;
  external List<FeatureJsImpl> get features;
  external factory FeatureCollectionJsImpl({
    String type,
    List<FeatureJsImpl> features,
  });
}

@JS()
@anonymous
class FeatureJsImpl {
  external dynamic get id;
  external set id(dynamic id);
  external String get type;
  external GeometryObjectJSImpl get geometry;
  external dynamic get properties;
  external String get source;
  external factory FeatureJsImpl({
    dynamic id,
    String? type,
    GeometryObjectJSImpl geometry,
    dynamic properties,
    String? source,
  });
}

@JS()
@anonymous
class GeometryObjectJSImpl {
  external String get type;
  external dynamic get coordinates;
  external factory GeometryObjectJSImpl({
    String? type,
    dynamic coordinates,
  });
}
