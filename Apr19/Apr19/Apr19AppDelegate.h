//
//  Apr19AppDelegate.h
//  Apr19
//
//  Created by Michael Battista on 4/17/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>  //needed for AVAudioPlayer
@class View;

@interface Apr19AppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;

@end
