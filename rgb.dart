/// [author] Mina Sameh
///
/// This library is made to change rgb to a hex value.
///
/// ## Functions
/// -----------------
/// [rgbToHex]
///
/// [ValueToHex]
///
/// [isValidRGBValue]
library rbg;

// Everything is sepreated into components

///  This function changes the value of int to hex value
///
///  it takes **Int** [Value] that will be changed from decimal to hex
///
///  returns **String** [Hex] value

String ValueToHex(int value) {
  String val = value.toRadixString(16);
  return val.length == 1 ? "0" + val.toUpperCase() : val.toUpperCase();
}

///  Function that checks if number is between two values, used to mostly
///  check if number is between 255 and 0 (rgb value)
///
///  Takes **int** [value] the number we are testing
///
///  Returns **Boolean** [true] if value is between 0 and 255 else [false]

bool isValidRGBValue(int value) {
  return -1 < value && value < 256;
}

///  The Function that changes rgb values to Hex.
///
///  RGB is basically well RGB its ( Red, Green, Blue ),
///  in Hex its the same except its RRGGBB(*hex values*) with a `#`
///  in the front, this changes the integer values into hex first then appends a
///  `#` to the front.
///
///  ## Usage
///  ------------------------
///  ```dart
///  import 'rgb.dart'
///
///  String color = rgbToHex(28, 135, 201) // returns #1C87C9
///  print(color) // outputs #1C87C9
///  ```
///
///  ## Parameters
///  ------------------------
///  [red] is the red value
///
/// [green] is the green value
///
/// [blue] is the blue value
///
///  ## Retruns
///  ------------------------
///  return String [Hex] value starting with `#`
///
///  ## Throws
///  ------------------------
///  throws [RangeError] if the number isn't a valid RGB value
///
///  throws [UnsupportedError] if something went wrong

// ignore: missing_return
String rgbToHex(int red, int green, int blue) {
  if (isValidRGBValue(red) && isValidRGBValue(green) && isValidRGBValue(blue)) {
    return "#" + ValueToHex(red) + ValueToHex(green) + ValueToHex(blue);
  } else {
    // To make things more well, easier to figure out what went wrong from
    // the programmer side of things I decided to split it and return error
    // wheather its red/green/blue value error :)
    if (!isValidRGBValue(red)) {
      throw new RangeError("The Red value isn't between 0 and 255!");
    } // if
    if (!isValidRGBValue(green)) {
      throw new RangeError("The Green value isn't between 0 and 255!");
    } // if
    if (!isValidRGBValue(blue)) {
      throw new RangeError("The Blue value isn't between 0 and 255!");
    } // if
    throw new UnsupportedError('Exception Occured in rgbToHex!\n');
  } // else
}
