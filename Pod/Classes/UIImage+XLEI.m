//
//  UIImage+XLEI.m
//  Pods
//
//  Created by Randy on 15/11/11.
//
//

#import "UIImage+XLEI.h"
@implementation UIImage (XLEI)
+ (UIImage *)xlei_imageNamed:(NSString *)imageName;
{
    return [UIImage imageNamed:[NSString stringWithFormat:@"XLEasyImageSelect.bundle/%@",imageName]];
}

@end
