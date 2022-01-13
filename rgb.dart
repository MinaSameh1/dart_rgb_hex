/*
 * author: Mina Sameh
 * This library is made to change rgb to a hex value, 
 * I decided to sepreate most things into components in case 
 * i find a better way to do something I will change the used method body
 * instead of rewriting everything from scratch :)
 */
library rbg;

/*
 * This function changes the value of int to hex value
 * @param Value that will be changed from decimal to hex
 * @return the Hex value
 */
String ValueToHex(int value) {
    String val = value.toRadixString(16);
    return val.length == 1 ? "0" + val.toUpperCase() : val.toUpperCase();
}

/*
 * Function that checks if number is between two values, used to mostly 
 * check if number is between 255 and 0 (rgb value)
 * @param value the number we are testing
 * @return Return true if value is between 0 and 255 else false 
 */
bool isValidRGBValue(int value) {
    return -1 < value && value < 256;
}


/* 
 * The Function that changes rgb values to Hex, RGB is basically well RGB
 * its ( Red, Green, Blue ), in Hex its the same except its RRGGBB with a '#'
 * in the front, this changes the integer values into hex first then appends a 
 * '#' to the front.
 * @param red the red value
 * @param green the green value
 * @param blue the blue value
 * @return the Hex value
 * @throws RangeError if the number isn't a valid RGB value
 * @throws FormatException if it isn't even an int
 */
String rgbToHex(int red, int green, int blue){
    if(
            isValidRGBValue(red) &&
            isValidRGBValue(green) &&
            isValidRGBValue(blue)
    ) {
        return "#" + ValueToHex(red) +
                ValueToHex(green) +
                ValueToHex(blue); 
    } else {
        // To make things more well, easier to figure out what went wrong from 
        // the programmer side of things I decided to split it and return error
        // wheather its red/green/blue value error :)
        if( !isValidRGBValue(red)) {
            throw new RangeError("The Red value isn't between 0 and 255!");
        }
        if( !isValidRGBValue(green)) {
            throw new RangeError("The Green value isn't between 0 and 255!");
        }
        if( !isValidRGBValue(blue)) {
            throw new RangeError("The Blue value isn't between 0 and 255!");
        }
        throw new Exception();
    }
}
