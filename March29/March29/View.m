//
//  View.m
//  March29
//
//  Created by Michael Battista on 3/27/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 1.0, 1.0, 1.0, 1.0);
    
    UIFont *font = [UIFont systemFontOfSize: 32.0];
    NSString *stringOne = @"EMERGENCY!";
    CGPoint pointOne = CGPointMake(0.0, 0.0);
    [stringOne drawAtPoint: pointOne withFont: font];
    NSString *stringTwo = @"PLEASE HELP!";
    CGPoint pointTwo = CGPointMake(0.0, 40.0);
    [stringTwo drawAtPoint:pointTwo withFont: font];
}


@end
