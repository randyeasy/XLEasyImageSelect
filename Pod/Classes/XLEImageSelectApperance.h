//
//  XLEImageSelectApperance.h
//  Pods
//
//  Created by Randy on 16/3/4.
//
//

#import <Foundation/Foundation.h>

#define XLEI_TINT_COLOR              [XLEImageSelectApperance sharedInstance].tintColor


@interface XLEImageSelectApperance : NSObject
@property (strong, nonatomic) UIColor *tintColor;

+ (instancetype)sharedInstance;

@end
