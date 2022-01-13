library rgb;

import 'rgb.dart';
import 'package:test/test.dart';

main() {
    test(('Check if function exists first and it takes input') , () {
        expect(rgbToHex(0,0,0), allOf([
            startsWith("#"),
            equals("#000000")
        ]));
    });

    test('Check if rgbToHex returns correct hex codes' , (){
        // print("RGB Values 99, 9, 202 Equal " + rgbToHex(99, 9, 202));
        expect(rgbToHex(99, 9, 202), equals("#6309CA"));
        // print("RGB Values 201, 8, 47 Equal " + rgbToHex(201, 8, 47));
        expect(rgbToHex(201, 8, 47), equals("#C9082F"));
        // print("RGB Values 28, 135, 201 Equal " + rgbToHex(28, 135, 201));
        expect(rgbToHex(28, 135, 201), equals("#1C87C9"));
        // print("RGB Values 214, 199, 199 Equal " + rgbToHex(214, 199, 199));
        expect(rgbToHex(214, 199, 199), equals("#D6C7C7"));
        // print("RGB Values 0, 0, 0 Equal " + rgbToHex(0, 0, 0));
        expect(rgbToHex(0, 0, 0), equals("#000000"));
        // print("RGB Values 64, 36, 36 Equal " + rgbToHex(64, 36, 36));
        expect(rgbToHex(64, 36, 36), equals("#402424"));
    });

    test(('Check if the throw work'), () {
        expect( ()=> rgbToHex(300,100,100) , throwsA(isA<RangeError>()));
        expect( ()=> rgbToHex(200,1230,200) , throwsA(isA<RangeError>()));
        expect( ()=> rgbToHex(200,230,400) , throwsA(isA<RangeError>()));
    });
}
