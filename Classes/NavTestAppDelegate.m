//
//  NavTestAppDelegate.m
//  NavTest
//
//  Created by Wayne Hoy on 12-09-06.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "NavTestAppDelegate.h"
#import "GANTracker.h"	// Google SETUP-1

@implementation NavTestAppDelegate

@synthesize window;
@synthesize myNavController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	// Google SETUP-2 Begin
	[[GANTracker sharedTracker] startTrackerWithAccountID:@"UA-34669016-1"
										   dispatchPeriod:-1
												 delegate:nil];
		
	// Google SCREEN-2
	if (![[GANTracker sharedTracker] trackPageview:@"/first_view"
										 withError:nil]) {
		// Handle error here
	}
	
	
    // Override point for customization after application launch.
    self.window.rootViewController = self.myNavController;
	
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[[GANTracker sharedTracker] stopTracker];	// Google SETUP-3
    [window release];
    [super dealloc];
}


@end
