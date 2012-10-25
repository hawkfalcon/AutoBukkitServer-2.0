//
//  AppDelegate.m
//  AutoBukkitServer 2.0
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
    if(Build != nil) {
        if(RAMType && RAMAmount != nil) {
            if(Username != nil) {
                if(Build == @"Recommended") {
                    
                } else if (Build == @"Developer") {
                
                } else if(Build == @"Beta") {
                
                }
            }
        }
    }
}

@end
