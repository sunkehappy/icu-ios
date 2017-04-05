# icu-ios
This is a [ICU](http://site.icu-project.org/) sub project for iOS project integration. And the [ICU] version is 58.2.

### How to use
1. Clone this project.
2. $ ./build.sh
3. $ ./make_universal.sh
4. Copy the `include` and all `.a` files under `build-universal` to your project.

Why I don't use CocoaPods? Because the build will take a long time so we should not build it more than 1 time.

An example:

    const char* IcuTool::format(string input, Formattable *argument, int argumentCount) {
        UErrorCode errorCode = U_ZERO_ERROR;
        MessageFormat form(input.c_str(), errorCode);
        UnicodeString string;
        FieldPosition fpos = 0;
        form.format(argument, argumentCount, string, fpos, errorCode );
    
        int32_t sz = (int32_t)input.length() * 2;
        char* dest = new char[sizeof (*dest) * sz];
        string.extract(dest, sz, NULL, errorCode);
    
        return dest;
    }

### Thanks to
1. [How to build ICU so I can use it in an iPhone app?](http://stackoverflow.com/questions/8126233/how-to-build-icu-so-i-can-use-it-in-an-iphone-app)
2. [Kiwix](https://sourceforge.net/p/kiwix/kiwix/ci/06a326ba5b9b1514c17797c2c8113eb3dd28e792/tree/ios/)
3. [Can I have Swift, Objective-C, C and C++ files in the same Xcode project?](http://stackoverflow.com/questions/32541268/can-i-have-swift-objective-c-c-and-c-files-in-the-same-xcode-project/32546879#32546879)
