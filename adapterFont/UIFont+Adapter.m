//
//  UIFont+Adapter.m
//  adapterFont
//
//  Created by 苗 on 2021/9/22.
//

#import "UIFont+Adapter.h"
#import <objc/runtime.h>

@implementation UIFont (Adapter)
+ (void)load {
    Method method1 = class_getClassMethod([self class], @selector(fontWithDescriptor:size:));
    Method method2 = class_getClassMethod([self class], @selector(fontWithSize:descriptor:));
    method_exchangeImplementations(method2, method1);
}
+ (instancetype)fontWithSize:(CGFloat)size descriptor:(UIFontDescriptor *)descriptor {
    size = size + 10;
    return [UIFont fontWithSize:size descriptor:descriptor];
}
@end
