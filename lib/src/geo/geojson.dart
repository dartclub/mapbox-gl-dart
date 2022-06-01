library mapboxgl.geo.geojson;

import 'package:mapbox_gl_dart/src/interop/interop.dart';
import 'package:mapbox_gl_dart/src/utils.dart';
import 'package:turf/turf.dart';

class GeometryObjectWithJsTraits extends GeometryObject
    implements JsObjectWrapper<GeometryObjectWithJsTraits> {
  @override
  // TODO: implement jsObject
  final GeometryObjectWithJsTraits jsObject;

  GeometryObjectWithJsTraits(this.jsObject) {
    
  }
}

class FeatureWithJsTraits extends Feature
    implements JsObjectWrapper<FeatureJsImpl> {
  @override
  final FeatureJsImpl jsObject;

  FeatureWithJsTraits.fromJsObject(this.jsObject)
      : super(
          geometry: GeometryObjectWithJsTraits(jsObject.geometry),
          id: jsObject.id,
          properties: dartifyMap(jsObject.properties),
          fields: {},
        );
}

class FeatureCollectionWithJsTraits extends FeatureCollection
    implements JsObjectWrapper<FeatureCollectionJsImpl> {
  @override
  final FeatureCollectionJsImpl jsObject;

  FeatureCollectionWithJsTraits(this.jsObject)
      : super(
            features: jsObject.features
                .map((f) => FeatureWithJsTraits.fromJsObject(f))
                .toList());
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
