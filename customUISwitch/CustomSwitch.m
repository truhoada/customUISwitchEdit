//
//  CustomSwitch.m
//  customUISwitch
//
//  Created by admin on 8/10/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch
{
    UIButton *_buttonOnSwitch;
    UIButton *_buttonOffSwitch;
}
- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 216, 80)];
    _buttonOffSwitch = [[UIButton alloc]initWithFrame: CGRectMake(0, 0, 108, 80)];
    _buttonOnSwitch  = [[UIButton alloc] initWithFrame:CGRectMake(108, 0, 108, 80)];
    
    [_buttonOffSwitch addTarget:self action:@selector(pressOff) forControlEvents:UIControlEventTouchUpInside];
    [_buttonOnSwitch addTarget:self action:@selector(pressOn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonOffSwitch];
    [self addSubview:_buttonOnSwitch];
    self.value = false;
    return self;
}

- (void) pressOff {
    self.value = false;
}

- (void) pressOn {
    self.value = true;
}

- (BOOL) getValue {
    return _value;
}

- (void) setValue:(BOOL)value {
    _value = value;
    if (_value) {
        [_buttonOffSwitch setImage:[UIImage imageNamed:@"OffGrey"] forState:normal];
        [_buttonOnSwitch setImage:[UIImage imageNamed:@"OnBlue"] forState:normal];
    } else {
        [_buttonOffSwitch setImage:[UIImage imageNamed:@"OffBlue"] forState:normal];
        [_buttonOnSwitch setImage:[UIImage imageNamed:@"OnGrey"] forState:normal];
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end

















