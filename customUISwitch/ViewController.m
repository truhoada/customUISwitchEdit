//
//  ViewController.m
//  customUISwitch
//
//  Created by admin on 7/29/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *imgOffSwitch;
@property (weak, nonatomic) IBOutlet UIButton *imgOnSwitch;

@end

@implementation ViewController {
    CustomSwitch *mySwitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mySwitch = [[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 216, 80)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width/2.0, 200);
    [self.view addSubview:mySwitch];
    [mySwitch addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
    
//    [_imgOnSwitch setImage:[UIImage imageNamed:@"OnBlue"] forState:normal];
//    [_imgOffSwitch setImage:[UIImage imageNamed:@"OffGrey"] forState:normal];
    
}
- (void) switchValueChange: (CustomSwitch*) customSwitch {
    NSLog(@"switchValue = %d",customSwitch.value);
}


//- (IBAction)btnOnCustomSwitch:(id)sender {
//    if ([_imgOnSwitch.currentImage isEqual:[UIImage imageNamed:@"OnGrey"]])
//    {
//        [_imgOnSwitch setImage:[UIImage imageNamed:@"OnBlue"] forState:normal];
//        [_imgOffSwitch setImage:[UIImage imageNamed:@"OffGrey"] forState:normal];
//    }
//}
//
//
//- (IBAction)btnOffCustomSwitch:(id)sender {
//    if ([_imgOffSwitch.currentImage isEqual:[UIImage imageNamed:@"OffGrey"]])
//    {
//        [_imgOnSwitch setImage:[UIImage imageNamed:@"OnGrey"] forState:normal];
//        [_imgOffSwitch setImage:[UIImage imageNamed:@"OffBlue"] forState:normal];
//    }
//    
//}
@end
