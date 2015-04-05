//
//  View.m
//  Apr19
//
//  Created by Michael Battista on 4/17/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        

		// Initialization code 
        
		textView = [[UITextView alloc] initWithFrame: 
                    CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height* 1.25)];
        textView.backgroundColor = [UIColor blackColor];
		textView.textColor = [UIColor yellowColor];
		textView.font = [UIFont fontWithName: @"Arial" size: 17];
        textView.textAlignment = UITextAlignmentCenter;
		textView.editable = NO;	//Don't pop up a keyboard.
        textView.scrollEnabled = NO;
        textView.center = CGPointMake(
                                      self.bounds.size.width / 2,
                                      textView.bounds.size.height * 1.5
                                      );		
		textView.text =
        
        @"Episode VI\n"
        
        @"RETURN OF THE JEDI\n\n"
        
        @"Luke Skywalker has returned to\n"
        @"his home planet of Tatooine in\n"
        @"an attempt to rescue his\n"
        @"friend Han Solo from the\n"
        @"clutches of the vile gangster\n"
        @"Jabba the Hutt.\n\n"
        
        @"Little does Luke know that the\n"
        @"GALACTIC EMPIRE has secretly\n"
        @"begun construction on a new\n"
        @"armored space station even\n"
        @"more powerful than the first\n"
        @"dreaded Death Star.\n\n"
        
        @"When completed, this ultimate\n"
        @"weapon will spell certain doom\n"
        @"for the small band of rebels\n"
        @"struggling to restore freedom\n"
        @"to the galaxy...\n";
        

        imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]]; 
        imageView.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        [self addSubview: imageView];
 		[self addSubview: textView];
     }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
          
    // Drawing code
    [UIView animateWithDuration: 9 
                          delay: 0 
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         imageView.transform = CGAffineTransformMakeScale(0.0005f, 0.0005f);
                                }
                     completion: NULL];
    
    
    [UIView animateWithDuration: 170
                          delay: 0 // 11
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         textView.center = CGPointMake(
                                                       self.bounds.size.width / 2,
                                                       -textView.bounds.size.height * 2);
                                }
                     completion: NULL];
}

@end
