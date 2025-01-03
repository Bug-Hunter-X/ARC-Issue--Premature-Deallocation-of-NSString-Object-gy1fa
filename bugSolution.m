The issue stems from the missing `strong` keyword in the declaration of `myString`. Without it, the string is deallocated prematurely, likely before `self.myString` gets used in the function.  Here's the corrected code:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString; // Added 'strong'
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@