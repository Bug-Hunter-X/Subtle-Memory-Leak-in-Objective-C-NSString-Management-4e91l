@interface MyClass : NSObject
@property (nonatomic, retain) NSString *myString;
@end

@implementation MyClass
- (id)init {
    self = [super init];
    if (self) {
        _myString = [[NSString alloc] init]; // Or any other appropriate initialization
    }
    return self;
}
- (void)dealloc {
    [_myString release]; // Corrected memory management
    [super dealloc];
}
@end

// ... in some other method ...
MyClass *myObject = [[MyClass alloc] init];
myObject.myString = [NSString stringWithString:@