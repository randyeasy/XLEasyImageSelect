//
//  XLEViewController.m
//  XLEasyImageSelect
//
//  Created by 晓亮 on 02/29/2016.
//  Copyright (c) 2016 晓亮. All rights reserved.
//

#import "XLEViewController.h"

@interface XLEViewController ()

@end

@implementation XLEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doAddItemsOperation;
{
    [super doAddItemsOperation];
    __weak XLEViewController *weakSelf = self;
    
    [self.items addObject:[XLEDemoItem itemWithName:@"图片选取" desc:@"测试图片批量选择 有原图选择" callback:^{
        XLEImagePickerConfig *config = [[XLEImagePickerConfig alloc] init];
        config.maxNumberOfSelection = 3;
        config.batch = YES;
        config.batchFinishTitle = @"发送";
        config.hasFullImage = YES;
        config.assetType = XLE_IMAGEPICKER_ASSET_PHOTO;
        [[XLEImageSelectController sharedInstance] showBatchSelectController:self batchConfig:config selectCallback:^(NSArray<XLEAssetModel *> * _Nonnull urls, BOOL has) {
            XLEImageBatchSelectBrowser *browser = [[XLEImageBatchSelectBrowser alloc] initWithAssets:urls selectedAssets:nil index:0 fullImage:has];
            [weakSelf.navigationController pushViewController:browser animated:YES];
        }];
    }]];
    
    [self.items addObject:[XLEDemoItem itemWithName:@"图片选取" desc:@"测试图片批量选择 无原图选择" callback:^{
        XLEImagePickerConfig *config = [[XLEImagePickerConfig alloc] init];
        config.maxNumberOfSelection = 3;
        config.batch = YES;
        config.hasFullImage = NO;
        config.assetType = XLE_IMAGEPICKER_ASSET_PHOTO;
        [[XLEImageSelectController sharedInstance] showBatchSelectController:self batchConfig:config selectCallback:^(NSArray<XLEAssetModel *> * _Nonnull urls, BOOL has) {
            XLEImageBatchSelectBrowser *browser = [[XLEImageBatchSelectBrowser alloc] initWithAssets:urls selectedAssets:nil index:0 fullImage:has];
            [weakSelf.navigationController pushViewController:browser animated:YES];
        }];
    }]];
    
    [self.items addObject:[XLEDemoItem itemWithName:@"图片选取" desc:@"测试单张图片选择" callback:^{
        [[XLEImageSelectController sharedInstance] showSelectController:weakSelf selectCallback:^(XLEAssetModel * _Nonnull asset) {
            XLEImageSingleSelectBrowser *browser = [[XLEImageSingleSelectBrowser alloc] initWithAsset:asset];
            browser.finishCallback = ^(UIViewController *vc, XLEAssetModel *asset, BOOL used){
                [weakSelf.navigationController popViewControllerAnimated:YES];
            };
            [weakSelf.navigationController pushViewController:browser animated:YES];
        }];
    }]];
    
    [self.items addObject:[XLEDemoItem itemWithName:@"图片选取" desc:@"测试单张图片编辑选择，比例不可变" callback:^{
        XLEImageCropConfig *config = [[XLEImageCropConfig alloc] init];
        config.keepingCropAspectRatio = YES;
        config.rotationEnabled = YES;
        
        [[XLEImageSelectController sharedInstance] showSelectController:weakSelf cropConfig:config selectCallback:^(XLEAssetModel * _Nonnull asset) {
            XLEImageSingleSelectBrowser *browser = [[XLEImageSingleSelectBrowser alloc] initWithAsset:asset];
            browser.finishCallback = ^(UIViewController *vc, XLEAssetModel *asset, BOOL used){
                [weakSelf.navigationController popViewControllerAnimated:YES];
            };
            [weakSelf.navigationController pushViewController:browser animated:YES];
        }];
    }]];
    
    [self.items addObject:[XLEDemoItem itemWithName:@"图片选取" desc:@"测试单张图片编辑设置crop区域，比例可变" callback:^{
        XLEImageCropConfig *config = [[XLEImageCropConfig alloc] init];
        config.keepingCropAspectRatio = NO;
        config.rotationEnabled = NO;
        config.cropRect = CGRectMake(30, 30, 100, 100);
        
        [[XLEImageSelectController sharedInstance] showSelectController:weakSelf cropConfig:config selectCallback:^(XLEAssetModel * _Nonnull asset) {
            XLEImageSingleSelectBrowser *browser = [[XLEImageSingleSelectBrowser alloc] initWithAsset:asset];
            browser.finishCallback = ^(UIViewController *vc, XLEAssetModel *asset, BOOL used){
                [weakSelf.navigationController popViewControllerAnimated:YES];
            };
            [weakSelf.navigationController pushViewController:browser animated:YES];
        }];
    }]];
}


@end
