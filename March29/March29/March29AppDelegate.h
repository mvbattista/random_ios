//
//  March29AppDelegate.h
//  March29
//
//  Created by Michael Battista on 3/27/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface March29AppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
