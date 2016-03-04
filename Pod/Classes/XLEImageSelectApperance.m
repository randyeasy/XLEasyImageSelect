//
//  XLEImageSelectApperance.m
//  Pods
//
//  Created by Randy on 16/3/4.
//
//

#import "XLEImageSelectApperance.h"

@implementation XLEImageSelectApperance

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _tintColor = [UIColor orangeColor];
    }
    return self;
}

@end
