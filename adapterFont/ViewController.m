//
//  ViewController.m
//  adapterFont
//
//  Created by 苗 on 2021/9/22.
//

#import "ViewController.h"
#import "UIFont+Adapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:label];
    label.text = @"123ABC";
    label.font = [UIFont fontWithName:@"Digital-7" size:14];
    
    
    
    {
        UIFontDescriptor *fontDescriptor = label.font.fontDescriptor;
        //UIFontDescriptor 只修改大小 不修改字体库
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 100)];
        [self.view addSubview:label];
        label.text = @"123ABC";
        label.font = [UIFont fontWithDescriptor:fontDescriptor size:20];
    }
    
}


@end
