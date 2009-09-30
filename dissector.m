// Steve Baker
// 
// UW CP-120 Certificate in iPhone and Cocoa Development
// Q1 Intro to Programming in Objective-C and the Cocoa Framework.
// Homework assignment 28 Sep 09 part 1.

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];


    NSString *dissectableString = @"this is a longer string for some fun";
    NSLog(@"This string will be dissected: %@", dissectableString);
    NSLog(@"The string contains %d characters. \n", [dissectableString length]);
    
    
    NSUInteger i;
    for (i = 0; i < [dissectableString length]; i++) {
        
        NSLog(@"%c", [dissectableString characterAtIndex:i]);
    }
    
    [pool drain];
    return 0;
}


