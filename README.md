# dart RGB hex

This is a small library that basically converts RGB values to hexadecimal values,
you can use it with flutter or dart.

## Using it

clone the repo and just import it

```dart
import 'rgb.dart';

// use it
rgbToHex( 200, 200, 200 ); // returns #C8C8C8
```

You can also clone it in your project root and then import it,
However keep in mind that that isn't best practice,
and I wouldn't recommend doing that.

```bash
# In project/. 
git clone https://github.com/MinaSameh1/dart_rgb_hex.git 
```

```dart
// In project/bin/file.dart
import '../dart_rgb_hex/rgb.dart';

// use it
print(rgbToHex(64, 36, 36)); // outputs #402424
```
## Tests

If you want to run the tests, first run this to get the test dependency:

```dart
dart pub get
```

Then

```dart
dart test testRGB.dart
```

I would recommend reading [this](https://pub.dev/packages/test) if you want to get more into testing :)

The [Effective Dart](https://dart.dev/guides/language/effective-dart/documentation) was used for writing documentation.
