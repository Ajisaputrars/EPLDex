//
//  MacApp.m
//  MacApp
//
//  Created by Aji Saputra Raka Siwi on 17/10/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

#import "MacApp.h"

@import AppKit;

@implementation MacApp

+ (void) disableMaximizeButton
{
    NSArray *windows = NSApplication.sharedApplication.windows;
    
    NSWindowCollectionBehavior behavior = NSWindowCollectionBehaviorFullScreenAuxiliary | NSWindowCollectionBehaviorFullScreenNone;
    
    for (NSWindow *window in windows) {
        [window setCollectionBehavior:behavior];
        
        NSButton *button = [window standardWindowButton:NSWindowZoomButton];
        [button setEnabled:NO];
    }
}

@end
