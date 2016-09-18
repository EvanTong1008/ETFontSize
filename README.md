# ETFontSize


####一.功能简介：iOS开发中的UIFont的类别，可随设备变化而自动改变字体大小


####二.如何引用

* pod 'ETFontSize', '~>1.0.0'

####三.字体设置：

#####1.默认字体大小：
* 4系列-->14.0
* 5系列-->14.0
* 6系列-->15.0
* 6P系列-->17.0

#####2.ETSizeType
* ETSizeVeryLittle-->默认值基础上-4
* ETSizeLittle-->默认值基础上-2
* ETSizeNormal-->默认值
* ETSizeLarge-->默认值基础上+2
* ETSizeVeryLarge-->默认值基础上+4

#####3.sizepoor
* 在默认值基础上加成sizepoor后的大小
* 举例1，在6S上设置sizepoor为2，则字体大小设置为17.0
* 举例2，在6P上设置sizepoor为-3，则字体设置为14.0

####四.使用说明

* label.font = [UIFont ETSystemFontDependOnDeviceSizetype:ETSizeLittle];
* label.font = [UIFont ETSystemFontDependOnDeviceSizepoor:2.0];
* fontSize = [UIFont ETFontSizeWithDeviceSizepoor:3.0]];



