//
//  Apr26AppDelegate.h
//  Apr26
//
//  Created by Michael Battista on 4/23/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class View;

@interface Apr26AppDelegate : UIResponder <UIApplicationDelegate> {
	SystemSoundID sid1;
	SystemSoundID sid2;
	SystemSoundID sid3;
	SystemSoundID sid4;
	SystemSoundID sid5;
	SystemSoundID sid6;
	SystemSoundID sid7;
	SystemSoundID sid8;
	SystemSoundID sid9;
	SystemSoundID sid10;
	View *view;
	UIWindow *_window;
}

- (void) touchUpInsideSexy: (id) sender;
- (void) touchUpInsideChallenge: (id) sender;
- (void) touchUpInsideNooo: (id) sender;
- (void) touchUpInsideInetporn: (id) sender;
- (void) touchUpInsideSadTrombone: (id) sender;
- (void) touchUpInsideEpicsax: (id) sender;
- (void) touchUpInsideMacstartup: (id) sender;
- (void) touchUpInsideDevelopers: (id) sender;
- (void) touchUpInsideKhan: (id) sender;
- (void) touchUpInsideEpic: (id) sender;

@property (strong, nonatomic) UIWindow *window;

@end
