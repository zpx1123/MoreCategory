//
//  NSArray+FirstObject.m
//

#import "NSArray+FirstObject.h"

@implementation NSArray (FirstObject)

- (id)firstObject
{
    return self.count > 0 ? self[ 0 ] : nil;
}

@end
