//
//  Apr26AppDelegate.m
//  Apr26
//
//  Created by Michael Battista on 4/23/12.
//  Copyright (c) 2012 Battista Labs. All rights reserved.
//

#import "Apr26AppDelegate.h"
#import "View.h"

@implementation Apr26AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Override point for customization after application launch.
	NSBundle *bundle = [NSBundle mainBundle];
	//NSLog(@"bundle.bundlePath == \"%@\"", bundle.bundlePath);	
    
	NSString *filename = [bundle pathForResource: @"sexy_knowit" ofType: @"mp3"];
	//NSLog(@"filename == \"%@\"", filename);
    
	NSURL *url = [NSURL fileURLWithPath: filename isDirectory: NO];
	//NSLog(@"url == \"%@\"", url);
    
	OSStatus error = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &sid1);
	if (error != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error);
	}
    
    NSBundle *bundle2 = [NSBundle mainBundle];
	NSString *filename2 = [bundle2 pathForResource: @"challenge" ofType: @"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath: filename2 isDirectory: NO];
	OSStatus error2 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url2, &sid2);
	if (error2 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error2);
	}
    
    NSBundle *bundle3 = [NSBundle mainBundle];
	NSString *filename3 = [bundle3 pathForResource: @"nooo" ofType: @"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath: filename3 isDirectory: NO];
	OSStatus error3 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url3, &sid3);
	if (error3 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error3);
	}
    
    NSBundle *bundle4 = [NSBundle mainBundle];
	NSString *filename4 = [bundle4 pathForResource: @"inetporn" ofType: @"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath: filename4 isDirectory: NO];
	OSStatus error4 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url4, &sid4);
	if (error4 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error4);
	}
    
    NSBundle *bundle5 = [NSBundle mainBundle];
	NSString *filename5 = [bundle5 pathForResource: @"sadtrombone" ofType: @"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath: filename5 isDirectory: NO];
	OSStatus error5 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url5, &sid5);
	if (error5 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error5);
	}
    
    NSBundle *bundle6 = [NSBundle mainBundle];
	NSString *filename6 = [bundle6 pathForResource: @"epicsaxguy" ofType: @"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath: filename6 isDirectory: NO];
	OSStatus error6 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url6, &sid6);
	if (error6 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error6);
	}
    
    NSBundle *bundle7 = [NSBundle mainBundle];
	NSString *filename7 = [bundle7 pathForResource: @"macstartup" ofType: @"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath: filename7 isDirectory: NO];
	OSStatus error7 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url7, &sid7);
	if (error7 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error7);
	}
    
    NSBundle *bundle8 = [NSBundle mainBundle];
	NSString *filename8 = [bundle8 pathForResource: @"developers" ofType: @"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath: filename8 isDirectory: NO];
	OSStatus error8 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url8, &sid8);
	if (error8 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error8);
	}
    
    NSBundle *bundle9 = [NSBundle mainBundle];
	NSString *filename9 = [bundle9 pathForResource: @"khaaan" ofType: @"mp3"];
	NSURL *url9 = [NSURL fileURLWithPath: filename9 isDirectory: NO];
	OSStatus error9 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url9, &sid9);
	if (error9 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error9);
	}
    
    NSBundle *bundle10 = [NSBundle mainBundle];
	NSString *filename10 = [bundle10 pathForResource: @"epic" ofType: @"mp3"];
	NSURL *url10 = [NSURL fileURLWithPath: filename10 isDirectory: NO];
	OSStatus error10 = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url10, &sid10);
	if (error10 != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error10);
	}
    
    
    
	/*
    UIScreen *screen = [UIScreen mainScreen];
	view = [[View alloc] initWithFrame: screen.applicationFrame];
	self.window = [[UIWindow alloc] initWithFrame: screen.bounds];
	//self.window.backgroundColor = [UIColor whiteColor];
    
	[self.window makeKeyAndVisible];
	[self.window addSubview: view];
	return YES;

     */
    
    
    UIScreen *screen = [UIScreen mainScreen];
	view = [[View alloc] initWithFrame: screen.applicationFrame];
	self.window = [[UIWindow alloc] initWithFrame: screen.bounds];

    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	[self.window addSubview: view];
    return YES;
}

- (void) touchUpInsideSexy: (id) sender {
	//The sender is the button that was pressed.
    
	//NSLog(@"The \"%@\" button was pressed.",
    //[sender titleForState: UIControlStateNormal]);
    
	//AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	AudioServicesPlaySystemSound(sid1);
}
- (void) touchUpInsideChallenge: (id) sender {
	AudioServicesPlaySystemSound(sid2);
}
- (void) touchUpInsideNooo: (id) sender {
	AudioServicesPlaySystemSound(sid3);
}
- (void) touchUpInsideInetporn: (id) sender {
	AudioServicesPlaySystemSound(sid4);
}
- (void) touchUpInsideSadTrombone: (id) sender {
	AudioServicesPlaySystemSound(sid5);
}
- (void) touchUpInsideEpicsax: (id) sender {
	AudioServicesPlaySystemSound(sid6);
}
- (void) touchUpInsideMacstartup: (id) sender {
	AudioServicesPlaySystemSound(sid7);
}
- (void) touchUpInsideDevelopers: (id) sender {
	AudioServicesPlaySystemSound(sid8);
}
- (void) touchUpInsideKhan: (id) sender {
	AudioServicesPlaySystemSound(sid9);
}
- (void) touchUpInsideEpic: (id) sender {
	AudioServicesPlaySystemSound(sid10);
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) dealloc {
	OSStatus error = AudioServicesDisposeSystemSoundID(sid1);
	OSStatus error2 = AudioServicesDisposeSystemSoundID(sid2);
	OSStatus error3 = AudioServicesDisposeSystemSoundID(sid3);
	OSStatus error4 = AudioServicesDisposeSystemSoundID(sid4);
	OSStatus error5 = AudioServicesDisposeSystemSoundID(sid5);
	OSStatus error6 = AudioServicesDisposeSystemSoundID(sid6);
	OSStatus error7 = AudioServicesDisposeSystemSoundID(sid7);
	OSStatus error8 = AudioServicesDisposeSystemSoundID(sid8);
	OSStatus error9 = AudioServicesDisposeSystemSoundID(sid9);
	OSStatus error10 = AudioServicesDisposeSystemSoundID(sid10);
	if (error != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error == %ld", error);
	}
	if (error2 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error2 == %ld", error2);
	}
	if (error3 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error3 == %ld", error3);
	}
	if (error4 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error4 == %ld", error4);
	}
	if (error5 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error5 == %ld", error5);
	}
	if (error6 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error6 == %ld", error6);
	}
	if (error7 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error7 == %ld", error7);
	}
	if (error8 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error8 == %ld", error8);
	}
	if (error9 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error9 == %ld", error9);
	}
	if (error10 != kAudioServicesNoError) {
		NSLog(@"AudioServicesDisposeSystemSoundID error10 == %ld", error10);
	}
}


@end
