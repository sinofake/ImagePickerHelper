//
//  ViewController.m
//  SSImagePickerHelper
//
//  Created by zhucuirong on 15/6/28.
//  Copyright (c) 2015年 SINOFAKE SINEP. All rights reserved.
//

#import "ViewController.h"
#import "SSImagePickerHelper.h"

@interface ViewController ()
@property (nonatomic, strong) SSImagePickerHelper *imagePickerHelper;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonClick:(id)sender {
    [self.imagePickerHelper showImagePickerControllerWithSourceType:UIImagePickerControllerSourceTypeCamera presentingViewController:self completionHandler:^(UIImage *image, NSDictionary *info) {
        NSLog(@"image:%@", image);
        NSLog(@"info:%@", info);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (SSImagePickerHelper *)imagePickerHelper {
    if (!_imagePickerHelper) {
        _imagePickerHelper = [[SSImagePickerHelper alloc] init];
        _imagePickerHelper.allowsEditing = YES;
    }
    return _imagePickerHelper;
}


@end
