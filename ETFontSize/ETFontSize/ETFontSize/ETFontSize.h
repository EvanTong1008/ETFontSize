//
//  ETFontSize.h
//  ETFontSize
//
//  Created by EvanTong on 16/9/18.
//  Copyright © 2016年 EvanTong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (FontSize)

typedef enum {
    ETSizeVeryLittle,
    ETSizeLittle,
    ETSizeNormal,
    ETSizeLarge,
    ETSizeVeryLarge
} ETSizeType;


/**
 *  @return 根据机型与字体的设置，得出该字体的大小
 */
+ (CGFloat)ETFontSizeWithDeviceSizetype:(ETSizeType)sizetype;
+ (CGFloat)ETFontSizeWithDeviceSizepoor:(CGFloat)sizepoor;


/**
 *  @return 匹配机型的系统字体，sizepoor为与该机型下默认字体大小的差值
 */
+ (UIFont *)ETSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype;
+ (UIFont *)ETSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor;



/**
 *  @return 匹配机型的自定义字体
 */
+ (UIFont *)ETFontDependOnDeviceWithName:(NSString *)fontName sizetype:(ETSizeType)sizetype;
+ (UIFont *)ETFontDependOnDeviceWithName:(NSString *)fontName sizepoor:(CGFloat)sizepoor;



/**
 *  @return 匹配机型的加粗系统字体
 */
+ (UIFont *)ETBoldSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype;
+ (UIFont *)ETBoldSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor;



/**
 *  @return 匹配机型的斜体系统字体
 */
+ (UIFont *)ETItalicSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype;
+ (UIFont *)ETItalicSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor;


@end
