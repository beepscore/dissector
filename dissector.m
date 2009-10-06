// Steve Baker
// 
// UW CP-120 Certificate in iPhone and Cocoa Development
// Q1 Intro to Programming in Objective-C and the Cocoa Framework.
// Homework assignment 1a.

#import <Foundation/Foundation.h>

// the method declaration might be better placed in the header file,
// but I don't know how to deal with a precompiled header yet.
void dissectByRecursion(NSString *aString);


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // Beginner style unit tests!  I don't know how to write tests yet.
    // NSString *dissectableString = @"";  // passed
    // NSString *dissectableString = @"a"; // passed
    // NSString *dissectableString = @"ab"; // passed
    // NSString *dissectableString = @"1234\5\"6";  // passed, \5 returns blank line
    
    NSString *dissectableString = @"this is a longer string for some fun";
    
    NSLog(@"Dissecting: %@", dissectableString);
    // use singular and plural.  Alternatively could use  ?@"":@"s"
    NSLog(@"The string contains %d %@. \n\n",
          [dissectableString length],
          (1 == [dissectableString length])?@"character":@"characters");

    NSLog(@"Dissect using a loop.");    
    NSUInteger i;
    for (i = 0; i < [dissectableString length]; i++) {
        
        NSLog(@"%c", [dissectableString characterAtIndex:i]);
    }
    
    NSLog(@"Dissect using recursion.");
    dissectByRecursion(dissectableString);
    
    [pool drain];
    return 0;
}

// This method appears slightly more complicated than looping, may use more memory
void dissectByRecursion(NSString *aString) {
    
    int aStringLength = [aString length];

    if (0 == aStringLength) {
        return;
    }
    else {
        NSLog(@"%c", [aString characterAtIndex:0]);
        if (aStringLength > 1)
        {
            dissectByRecursion([aString substringFromIndex:1]);
        }
    }
    return;
}

