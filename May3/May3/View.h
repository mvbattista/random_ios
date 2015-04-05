//
//  View.h
//  May3
//
//  Created by Michael Battista on 5/1/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface View: UIView {
	ViewController *viewController;
	UITextView *textView;
    
    float cost;
    
    UITextField *textField;
	UILabel *label;
    
    UISwitch *mySwitch;
    
    UISlider *slider;
	UILabel *label2;


}

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c;
@end
