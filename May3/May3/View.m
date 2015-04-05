//
//  View.m
//  May3
//
//  Created by Michael Battista on 5/1/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

- (void) valueChanged: (id) sender {
	UISlider *s = sender;
    label2.text = [NSString stringWithFormat:@"%f", label.text.floatValue * s.value/100];
    
	/*
    float red = (s.value - s.minimumValue)
    / (s.maximumValue - s.minimumValue);
    
	slider.backgroundColor = [UIColor colorWithRed:
                              red green: 0.0 blue: 1.0 - red alpha: 1.0];
    
	label.text = [NSString stringWithFormat: @"%5.1f° F == %5.1f° C",
                  slider.value, CELSIUS(slider.value)];
     */
}



- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
        
        UIFont *font = [UIFont systemFontOfSize: 24];
		CGFloat height = [@"A" sizeWithFont: font].height;
        
		//Center the UITextField in the TextFieldView.
		CGRect b = self.bounds;
        
		CGRect f = CGRectMake(
                              b.origin.x,
                              b.origin.y,
                              b.size.width,
                              height
                              );
        
		textField = [[UITextField alloc] initWithFrame: f];
		textField.borderStyle = UITextBorderStyleNone;	//default
		textField.backgroundColor = [UIColor greenColor];
		textField.textColor = [UIColor blackColor];
        
		textField.clearButtonMode = UITextFieldViewModeAlways;
		textField.keyboardType = UIKeyboardTypeDecimalPad;
		textField.returnKeyType = UIReturnKeyDone;
        
		textField.font = font;
		textField.placeholder = @"<ENTER COST>";
		textField.textAlignment = UITextAlignmentCenter;	//default
		textField.autocapitalizationType = UITextAutocapitalizationTypeNone; //default
		textField.autocorrectionType = UITextAutocorrectionTypeNo;
		textField.secureTextEntry = NO;	//for secret passwords
        
		textField.delegate = self;
		[self addSubview: textField];
        
		f = CGRectMake(
                       b.origin.x,
                       b.origin.y + textField.bounds.size.height + 10,
                       b.size.width,
                       height
                       );
        
		label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor grayColor];
		label.font = font;
		[self addSubview: label];
        
        //Do not specify a size for the switch.
		//Let the switch assume its own natural size.
		mySwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch == nil) {
			return nil;
		}
        
		//Call the valueChanged: method of the application delegate
		//when the value of the switch is changed.
		
		[mySwitch addTarget: [UIApplication sharedApplication].delegate
                     action: @selector(valueChanged:)
           forControlEvents: UIControlEventValueChanged
         ];
		
		//Center the switch in the SwitchView.        
		mySwitch.center = CGPointMake(
                                      b.origin.x + b.size.width / 2,
                                      b.origin.y + b.size.height / 4
                                      );
		mySwitch.on = NO;	//the default
		[self addSubview: mySwitch];

        CGSize sliderSize = CGSizeMake(0 - 100, 16);
        
		CGRect sliderFrame = CGRectMake(
                              b.origin.x + (b.size.width - sliderSize.width) / 2,
                              b.origin.y + (b.size.height - sliderSize.height) / 2,
                              sliderSize.width,
                              sliderSize.height
                              );
        
        slider = [[UISlider alloc] initWithFrame: sliderFrame];
		slider.minimumValue = 0;
		slider.maximumValue = 100;
		slider.value = (0 + 100) / 2;
		slider.continuous = YES;	//default is YES
        
        [slider addTarget:self
                   action: @selector(valueChanged:)
         forControlEvents: UIControlEventValueChanged
         ];
        
        [self valueChanged: slider];
		[self addSubview: slider];

        
        /*
		viewController = c;
        
		textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.editable = NO;
		textView.font = [UIFont fontWithName: @"Courier" size: 15];
		[self addSubview: textView];
         */
	}
	return self;
}


#pragma mark -
#pragma mark methods of UITextFieldDelegate protocol

//Called when return key is pressed.
//Decide if the app should accept this input and hide the keyboard.

- (BOOL) textFieldShouldReturn: (UITextField *) tf {
	if ([tf.text isEqualToString: @""]) {
		textField.placeholder = @"<ENTER A COST>";
	} else {
		[tf resignFirstResponder];	//Hide keyboard.
	}
	return YES;	//The text field should do its default behavior.
}

//Called when keyboard is hidden.
//Process the text that was input.

- (void) textFieldDidEndEditing: (UITextField *) tf {
	if ([textField.text isEqualToString: @""]) {
		label.text = @"$0.00";
	} else {
        /*
        NSNumberFormatter* f1 = [[NSNumberFormatter alloc] init];
        [f1 setNumberStyle:NSNumberFormatterDecimalStyle];
        NSNumber * myNumber = [f1 numberFromString:label.text];
        cost = myNumber;
        NSNumberFormatter* f2 = [[NSNumberFormatter alloc] init];
        [f2 setNumberStyle:NSNumberFormatterCurrencyStyle];
        NSString* formattedOutput = [f2 stringFromNumber:myNumber];
        //NSLog(@"Output as currency: %@", formattedOutput);
         */
        NSString *priceString = [NSString localizedStringWithFormat:@"$ %.2f",label.text];
        label.text = priceString;
        cost = priceString.floatValue;
        
        //[formatter release];        
        
        /*
		NSString *lowercase = [textField.text lowercaseString];
        
		label.text = [NSString stringWithFormat: @"%@%@ay",
                      [lowercase substringFromIndex: 1],	//all characters except the first
                      [lowercase substringToIndex: 1]		//the first character
                      ];
         */
	}
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	NSArray *a = [NSArray arrayWithObjects:
                  @"Unknown",
                  @"Portrait",
                  @"PortraitUpsideDown",	//home button at bottom
                  @"LandscapeRight",		//home button on right
                  @"LandscapeLeft",		//home button on left
                  nil
                  ];
    
	CGRect f = self.frame;
	CGRect b = self.bounds;
	CGRect F = self.superview.frame;
	CGRect B = self.superview.bounds;
    
	CGContextRef c = UIGraphicsGetCurrentContext();
	CGAffineTransform ctm = CGContextGetCTM(c);
    
	textView.text = [NSString stringWithFormat:
                     @"%@\n\n"
                     
                     @"      self.frame (%2g,%2g), %g×%g\n"
                     @"     self.bounds (%2g,%2g), %g×%g\n"
                     @" superview.frame (%2g,%2g), %g×%g\n"
                     @"superview.bounds (%2g,%2g), %g×%g\n\n"
                     
                     @"CTM\n"
                     @"%5g%5g%5g\n"
                     @"%5g%5g%5g\n"
                     @"%5g%5g%5g",
                     
                     [a objectAtIndex: viewController.interfaceOrientation],
                     
                     f.origin.x, f.origin.y, f.size.width, f.size.height,
                     b.origin.x, b.origin.y, b.size.width, b.size.height,
                     F.origin.x, F.origin.y, F.size.width, F.size.height,
                     B.origin.x, B.origin.y, B.size.width, B.size.height,
                     
                     ctm.a,  ctm.b,  0.0,
                     ctm.c,  ctm.d,  0.0,
                     ctm.tx, ctm.ty, 1.0
                     ];
}
*/

@end
