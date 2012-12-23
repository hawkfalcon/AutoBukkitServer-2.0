//
//  AppDelegate.m
//  ; 2.0
//
//  Created by Tristen Miller on 10/7/12.
//  Copyright (c) 2012 hawkfalcon. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize Build;
@synthesize RAMType;
@synthesize RAMAmount;
@synthesize Username;
@synthesize CreateServer;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)Create_Server:(id)sender {
    NSString * Url = nil; // this will contain the link for download.
    if(Build != nil) {
        if(RAMType && RAMAmount != nil) {
            if(Username != nil) {
                if(Build == @"Recommended") {
                    Url = @"http://dl.bukkit.org/latest-rb/craftbukkit.jar";
                    // run download (Husky will handle this :)
                } else if (Build == @"Developer") {
                  Url = @"http://dl.bukkit.org/latest-dev/craftbukkit.jar";
                    // run download (Husky will handle this :)
                } else if(Build == @"Beta") {
                  Url = @"http://dl.bukkit.org/latest-beta/craftbukkit.jar";
                    // run download (Husky will handle this :)
                }
            }
        }
    }
}

@end
