//
//  View.m
//  April5
//
//  Created by Michael Battista on 4/3/12.
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
        
        //Keep the size of the view the same,
		//but move the origin to the center of the view.
        CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
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
    NSString *stringOne = NSLocalizedString(@"LineOne", @"displayed with drawAtPoint:");
    //CGPoint pointOne = CGPointMake(0.0, 0.0);
    
    CGSize sizeOne = [stringOne sizeWithFont: font];
	CGFloat xOne = self.bounds.origin.x + (self.bounds.size.width - sizeOne.width) / 2;
	CGFloat yOne = self.bounds.origin.y + (self.bounds.size.height - sizeOne.height) / 2 - 20;
    CGPoint pointOne = CGPointMake(xOne, yOne);
    [stringOne drawAtPoint: pointOne withFont: font];
    
    
    NSString *stringTwo = NSLocalizedString(@"LineTwo", @"displayed with drawAtPoint:");
    
    CGSize sizeTwo = [stringTwo sizeWithFont: font];
	CGFloat xTwo = self.bounds.origin.x + (self.bounds.size.width - sizeTwo.width) / 2;
	CGFloat yTwo = self.bounds.origin.y + (self.bounds.size.height - sizeTwo.height) / 2 + 20;
    CGPoint pointTwo = CGPointMake(xTwo, yTwo);
    [stringTwo drawAtPoint: pointTwo withFont: font];

    
    
    //CGPoint pointTwo = CGPointMake(0.0, 40.0);
    //[stringTwo drawAtPoint:pointTwo withFont: font];
}


@end
