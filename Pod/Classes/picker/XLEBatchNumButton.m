//
//  XLEBrowserButton.m
//  Pods
//
//  Created by Randy on 16/1/25.
//
//

#import "XLEBatchNumButton.h"
#import "XLEImageSelectApperance.h"

@interface XLEBatchNumButton ()
@property (strong, nonatomic) UILabel *numValueLabel;
@property (strong, nonatomic) UILabel *sendLabel;
@end

@implementation XLEBatchNumButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.numValueLabel];
        [self addSubview:self.sendLabel];
        
        [self.sendLabel autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(0, 0, 0, 10) excludingEdge:ALEdgeLeading];
        [self.sendLabel autoSetDimension:ALDimensionWidth toSize:35];
        [self.numValueLabel autoPinEdge:ALEdgeTrailing toEdge:ALEdgeLeading ofView:self.sendLabel withOffset:-5];
        [self.numValueLabel autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
        [self.numValueLabel autoSetDimensionsToSize:CGSizeMake(21, 21)];
    }
    return self;
}

#pragma mark - set get

- (void)setEnabled:(BOOL)enabled{
    [super setEnabled:enabled];
    self.numValueLabel.backgroundColor = enabled?XLEI_TINT_COLOR:[UIColor XLE_colorWithHexString:@"#dddddd"];
    self.sendLabel.textColor = enabled?XLEI_TINT_COLOR:[UIColor XLE_colorWithHexString:@"#dddddd"];
}

- (UILabel *)numValueLabel
{
    if (_numValueLabel == nil) {
        _numValueLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 21, 21)];
            label.font = [UIFont systemFontOfSize:14];
            label.textAlignment = NSTextAlignmentCenter;
            label.backgroundColor = [UIColor clearColor];
            label.layer.cornerRadius = 21.0f / 2.0f;
            label.layer.masksToBounds = YES;
            label.textColor = [UIColor whiteColor];
            label.backgroundColor = XLEI_TINT_COLOR;
            label;
        });
    }
    return _numValueLabel;
}

- (UILabel *)sendLabel
{
    if (_sendLabel == nil) {
        _sendLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 45, self.frame.size.height)];
            label.font = [UIFont systemFontOfSize:17];
            label.textAlignment = NSTextAlignmentCenter;
            label.backgroundColor = [UIColor clearColor];
            label.textColor = XLEI_TINT_COLOR;
            label;
        });
    }
    return _sendLabel;
}

@end
