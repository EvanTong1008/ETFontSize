//
//  ETFontSize.m
//  ETFontSize
//
//  Created by EvanTong on 16/9/18.
//  Copyright © 2016年 EvanTong. All rights reserved.
//

#import "ETFontSize.h"

@implementation UIFont (FontSize)

+ (CGFloat)ETSizepoorWithSizetype:(ETSizeType)sizetype {
    if (sizetype == ETSizeVeryLittle) {
        return -4.f;
    } else if (sizetype == ETSizeLittle) {
        return -2.f;
    } else if (sizetype == ETSizeNormal) {
        return 0.f;
    } else if (sizetype == ETSizeLarge) {
        return 2.f;
    } else {
        return 4.f;
    }
}

/**
 *  normalSizeInDevices
 */
+ (CGFloat)ETNormalFontSizeWithDevice {
    if (IS_IPHONE_4()) {
        return 14.f;
    } else if (IS_IPHONE_5()) {
        return 14.f;
    } else if (IS_IPHONE_6_47()) {
        return 15.f;
    } else {
        return 17.f;
    }
}

+ (CGFloat)ETFontSizeWithDeviceSizetype:(ETSizeType)sizetype {
    return [self ETNormalFontSizeWithDevice] + [self ETSizepoorWithSizetype:sizetype];
}
+ (CGFloat)ETFontSizeWithDeviceSizepoor:(CGFloat)sizepoor {
    return [self ETNormalFontSizeWithDevice] + sizepoor;
}

+ (UIFont *)ETSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype {
    return [UIFont systemFontOfSize:[self ETFontSizeWithDeviceSizetype:sizetype]];
}
+ (UIFont *)ETSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor {
    return [UIFont systemFontOfSize:[self ETNormalFontSizeWithDevice] + sizepoor];
}

+ (UIFont *)ETFontDependOnDeviceWithName:(NSString *)fontName sizetype:(ETSizeType)sizetype {
    return [UIFont fontWithName:fontName size:[self ETFontSizeWithDeviceSizetype:sizetype]];
}
+ (UIFont *)ETFontDependOnDeviceWithName:(NSString *)fontName sizepoor:(CGFloat)sizepoor {
    return [UIFont fontWithName:fontName size:[self ETNormalFontSizeWithDevice] + sizepoor];
}

+ (UIFont *)ETBoldSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype {
    return [UIFont boldSystemFontOfSize:[self ETFontSizeWithDeviceSizetype:sizetype]];
}
+ (UIFont *)ETBoldSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor {
    return [UIFont boldSystemFontOfSize:[self ETNormalFontSizeWithDevice] + sizepoor];
}

+ (UIFont *)ETItalicSystemFontDependOnDeviceSizetype:(ETSizeType)sizetype {
    return [UIFont italicSystemFontOfSize:[self ETFontSizeWithDeviceSizetype:sizetype]];
}
+ (UIFont *)ETItalicSystemFontDependOnDeviceSizepoor:(CGFloat)sizepoor {
    return [UIFont italicSystemFontOfSize:[self ETNormalFontSizeWithDevice] + sizepoor];
}

#pragma mark - isIPhone
static inline BOOL IS_IPHONE()
{
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

static inline BOOL IS_IPHONE_4()
{
    return (IS_IPHONE() && fabs(([[UIScreen mainScreen] bounds].size.height - (double)480)) < DBL_EPSILON);
}

static inline BOOL IS_IPHONE_5()
{
    return (IS_IPHONE() && fabs(([[UIScreen mainScreen] bounds].size.height - (double)568)) < DBL_EPSILON);
}

static inline BOOL IS_IPHONE_6_47()
{
    return (IS_IPHONE() && fabs(([[UIScreen mainScreen] bounds].size.height - (double)667)) < DBL_EPSILON);
}

@end
