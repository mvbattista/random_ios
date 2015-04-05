//
//  main.m
//  March22
//
//  Created by Michael Battista on 3/16/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "March22AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSLog(@"This is output produced by NSLog.");
		NSLog(@"You are currently using iOS version %@", [UIDevice currentDevice].systemVersion);
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        NSLog(@"The width of the screen is %g and the height is %g.", screenRect.size.width, screenRect.size.height);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([March22AppDelegate class]));
    }
}
