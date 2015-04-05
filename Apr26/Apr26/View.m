//
//  View.m
//  Apr26
//
//  Created by Michael Battista on 4/23/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor darkGrayColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(100, 40);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 8,
                                  b.origin.y + (b.size.height - s.height) / 10,
                                  s.width,
                                  s.height
                                  );
        [button setBackgroundColor:[UIColor darkGrayColor]];
		[button setTitleColor: [UIColor purpleColor] forState: UIControlStateNormal];
		[button setTitle: @"Sexy" forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInsideSexy:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];

		button2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button2.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) * 7 / 8,
                                  b.origin.y + (b.size.height - s.height) / 10,
                                  s.width,
                                  s.height
                                  );
        [button2 setBackgroundColor:[UIColor darkGrayColor]];
		[button2 setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button2 setTitle: @"Challenge" forState: UIControlStateNormal];
        
		[button2 addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInsideChallenge:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button2];
    
		button3 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button3.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) / 8,
                                   b.origin.y + (b.size.height - s.height) * 3 / 10,
                                   s.width,
                                   s.height
                                   );
        [button3 setBackgroundColor:[UIColor darkGrayColor]];
		[button3 setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
		[button3 setTitle: @"Noooo" forState: UIControlStateNormal];
        
		[button3 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideNooo:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button3];
        
		button4 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button4.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) * 7 / 8,
                                   b.origin.y + (b.size.height - s.height) * 3 / 10,
                                   s.width,
                                   s.height
                                   );
        [button4 setBackgroundColor:[UIColor darkGrayColor]];
		[button4 setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
		[button4 setTitle: @"Internet" forState: UIControlStateNormal];
        
		[button4 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideInetporn:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button4];
        
		button5 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button5.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) / 8,
                                   b.origin.y + (b.size.height - s.height) * 5 / 10,
                                   s.width,
                                   s.height
                                   );
        [button5 setBackgroundColor:[UIColor darkGrayColor]];
		[button5 setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
		[button5 setTitle: @"Trombone" forState: UIControlStateNormal];
        
		[button5 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideSadTrombone:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button5];
        
		button6 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button6.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) * 7 / 8,
                                   b.origin.y + (b.size.height - s.height) * 5 / 10,
                                   s.width,
                                   s.height
                                   );
        [button6 setBackgroundColor:[UIColor darkGrayColor]];
		[button6 setTitleColor: [UIColor greenColor] forState: UIControlStateNormal];
		[button6 setTitle: @"Epic Sax" forState: UIControlStateNormal];
        
		[button6 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideEpicsax:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button6];
        
		button7 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button7.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) / 8,
                                   b.origin.y + (b.size.height - s.height) * 7 / 10,
                                   s.width,
                                   s.height
                                   );
        [button7 setBackgroundColor:[UIColor darkGrayColor]];
		[button7 setTitleColor: [UIColor lightGrayColor] forState: UIControlStateNormal];
		[button7 setTitle: @"Mac Startup" forState: UIControlStateNormal];
        
		[button7 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideMacstartup:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button7];
        
		button8 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button8.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) * 7 / 8,
                                   b.origin.y + (b.size.height - s.height) * 7 / 10,
                                   s.width,
                                   s.height
                                   );
        [button8 setBackgroundColor:[UIColor darkGrayColor]];
		[button8 setTitleColor: [UIColor greenColor] forState: UIControlStateNormal];
		[button8 setTitle: @"Developers" forState: UIControlStateNormal];
        
		[button8 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideDevelopers:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button8];
        
		button9 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button9.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width)  / 8,
                                   b.origin.y + (b.size.height - s.height) * 9 / 10,
                                   s.width,
                                   s.height
                                   );
        [button9 setBackgroundColor:[UIColor darkGrayColor]];
		[button9 setTitleColor: [UIColor orangeColor] forState: UIControlStateNormal];
		[button9 setTitle: @"Khaaan!" forState: UIControlStateNormal];
        
		[button9 addTarget: [UIApplication sharedApplication].delegate
                    action: @selector(touchUpInsideKhan:)
          forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button9];
        
 		button10 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button10.frame = CGRectMake(
                                    b.origin.x + (b.size.width - s.width) * 7 / 8,
                                    b.origin.y + (b.size.height - s.height) * 9 / 10,
                                    s.width,
                                    s.height
                                    );
        [button10 setBackgroundColor:[UIColor darkGrayColor]];
		[button10 setTitleColor: [UIColor yellowColor] forState: UIControlStateNormal];
		[button10 setTitle: @"Epic?!" forState: UIControlStateNormal];
        
		[button10 addTarget: [UIApplication sharedApplication].delegate
                     action: @selector(touchUpInsideEpic:)
           forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button10];
        
   
    
    
    
    
    
    }
	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
