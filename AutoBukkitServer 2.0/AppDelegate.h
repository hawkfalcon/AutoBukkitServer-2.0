//
//  AppDelegate.h
//  AutoBukkitServer 2.0
//
//  Created by Tristen Miller on 10/7/12.
//  Copyright (c) 2012 hawkfalcon. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSSegmentedControl *Build;
@property (weak) IBOutlet NSPopUpButton *RAMType;
@property (weak) IBOutlet NSLayoutConstraint *RAMAmount;
@property (weak) IBOutlet NSTextField *Username;
@property (weak) IBOutlet NSButton *CreateServer;

@property (assign) IBOutlet NSWindow *window;

@end
