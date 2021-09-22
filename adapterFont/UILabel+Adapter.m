//
//  UILabel+Adapter.m
//  adapterFont
//
//  Created by 苗 on 2021/9/22.
//

#import "UILabel+Adapter.h"
#import <objc/runtime.h>

@implementation UILabel (Adapter)
+ (void)load {
    Method method1 = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method method2 = class_getInstanceMethod([self class], @selector(adapterInitWithCoder:));
    method_exchangeImplementations(method1, method2);
    
}
- (instancetype)adapterInitWithCoder:(NSCoder *)aDecoder {
    [self adapterInitWithCoder:aDecoder];
    if (self) {
        UIFontDescriptor *descriptor = self.font.fontDescriptor;
        self.font = [UIFont fontWithDescriptor:descriptor size:[UIScreen mainScreen].bounds.size.width/375.f * descriptor.pointSize];
    }
    return self;
}
@end
