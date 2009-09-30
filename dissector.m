// Steve Baker
// 
// UW CP-120 Certificate in iPhone and Cocoa Development
// Q1 Intro to Programming in Objective-C and the Cocoa Framework.
// Homework assignment 28 Sep 09 part 1.

#import <Foundation/Foundation.h>

void dissectByRecursion(NSString *aString);

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // Beginner style unit tests!  I don't know how to write them yet.
    // NSString *dissectableString = @"";  // passed
    // NSString *dissectableString = @"a"; // passed
    // NSString *dissectableString = @"ab"; // passed
    // NSString *dissectableString = @"1234\5\"6";  // passed, \5 returns blank line
    NSString *dissectableString = @"this is a longer string for some fun";
    
    NSLog(@"Dissect using a loop.");
    NSLog(@"This string will be dissected: %@", dissectableString);
    NSLog(@"The string contains %d characters. \n", [dissectableString length]);
    
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
    switch ([aString length]) {
        case 0:
            // done
            break;
        case 1:
            NSLog(@"%c", [aString characterAtIndex:0]);
            break;
        default:
            NSLog(@"%c", [aString characterAtIndex:0]);
            dissectByRecursion([aString substringFromIndex:1]);
            break;
    }
        return;
}

