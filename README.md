In order to build proper asset class from assets and use them in very structured way best we can use flutter_asset_generator | Dart Package  package with will provide us feature to auto generate asset class even watch and manipulate asset class in real time.

## Uses:-

Install using pub global:-

dart pub global activate flutter_asset_generator

Add Assets ( root of the project ) :-

assets->images->sample_1.jpg

assets->images->sample_2.jpg

assets->images->sample_3.png

## How it works:-



export PATH="$PATH":"$HOME/.pub-cache/bin"
 ( to add the path )



fgen -n GlobalAssets
 ( -n for class name default is R ).

It will create a class GlobalAssets and convert assets to static String like:-



class GlobalAssets {
  const GlobalAssets._();
  /// ![preview](file:///Users/deepak/Desktop/autoasset/assets/images/sample_1.jpeg)
  static const String ASSETS_IMAGES_SAMPLE_1_JPEG =
      'assets/images/sample_1.jpeg';
  /// ![preview](file:///Users/deepak/Desktop/autoasset/assets/images/sample_2.jpeg)
  static const String ASSETS_IMAGES_SAMPLE_2_JPEG =
      'assets/images/sample_2.jpeg';
  /// ![preview](file:///Users/deepak/Desktop/autoasset/assets/images/sample_3.png)
  static const String ASSETS_IMAGES_SAMPLE_3_PNG = 'assets/images/sample_3.png';
}

Which later can be used as 


 Image.asset(
        GlobalAssets.ASSETS_IMAGES_SAMPLE_1_JPEG,
        width: width * 0.2,
        height: height * 0.4,
        fit: BoxFit.cover,
      ),
.
