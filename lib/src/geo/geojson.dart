library mapboxgl.geo.geojson;

import 'package:mapbox_gl_dart/src/interop/interop.dart';
import 'package:mapbox_gl_dart/src/utils.dart';
import 'package:turf/turf.dart';

class GeometryObjectWithJs extends GeometryObject {}

class JsConverter {
  static GeometryObject geometryObjectFromJsObject(
      GeometryObjectJSImpl jsObject) {
    return Point(coordinates: Position(10, 10));
  }

  static Feature featureFromJsObject(FeatureJsImpl jsObject) => Feature(
        geometry: geometryObjectFromJsObject(jsObject.geometry),
        id: jsObject.id,
        properties: dartifyMap(jsObject.properties),
      );

  static FeatureCollection featureCollectionFromJsObject(
          FeatureCollectionJsImpl jsObject) =>
      FeatureCollection(
        features: jsObject.features.map((f) => featureFromJsObject(f)).toList(),
      );
}



// class GeometryObject extends JsObjectWrapper<GeometryJsImpl> {
//   String get type => jsObject.type;
//   dynamic get coordinates => jsObject.coordinates;

//   factory GeometryObject({
//     String? type,
//     dynamic coordinates,
//   }) =>
//       GeometryObject.fromJsObject(GeometryJsImpl(
//         type: type,
//         coordinates: coordinates,
//       ));

//   /// Creates a new GeometryObject from a [jsObject].
//   GeometryObject.fromJsObject(GeometryJsImpl jsObject) : super.fromJsObject(jsObject);
// }
