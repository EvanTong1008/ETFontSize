//
//  ViewController.m
//  ETFontSize
//
//  Created by EvanTong on 16/9/18.
//  Copyright © 2016年 EvanTong. All rights reserved.
//

#import "ViewController.h"
#import "ETFontSize.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    CGFloat labelWidth = (screenWidth-30)/2.0;
    CGFloat labelHeight = (screenHeight-60-40)/5.0;
    
    NSArray *sizeTypeArray = @[@"size very little", @"size little",  @"size normal", @"size large", @"size very large"];
    for (int i = 0; i < 5; i++) {
        UILabel *labelDependOnSize = [[UILabel alloc] initWithFrame:CGRectMake(10, 30+i*(labelHeight+10), labelWidth, labelHeight)];
        labelDependOnSize.text = [NSString stringWithFormat:@"%@ : %.0lf", sizeTypeArray[i], [UIFont ETFontSizeWithDeviceSizetype:i]];
        labelDependOnSize.textAlignment = NSTextAlignmentCenter;
        labelDependOnSize.font = [UIFont ETSystemFontDependOnDeviceSizetype:i];
        labelDependOnSize.backgroundColor = [UIColor redColor];
        [self.view addSubview:labelDependOnSize];
    }
    
    for (int i = 0; i < 5; i++) {
        UILabel *labelDependOnPoor = [[UILabel alloc] initWithFrame:CGRectMake(20+labelWidth, 30+i*(labelHeight+10), labelWidth, labelHeight)];
        labelDependOnPoor.text = [NSString stringWithFormat:@"sizePoor=%i, size=%.0lf", (i-2)*2, [UIFont ETFontSizeWithDeviceSizepoor:(i-2)*2]];
        labelDependOnPoor.textAlignment = NSTextAlignmentCenter;
        labelDependOnPoor.font = [UIFont ETSystemFontDependOnDeviceSizepoor:(i-2)*2];
        labelDependOnPoor.backgroundColor = [UIColor greenColor];
        [self.view addSubview:labelDependOnPoor];
    }
}

@end
