//
//  AppDelegate.m
//  createMultipleWindow
//
//  Created by xu lian on 11-12-23.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [super dealloc];
}

- (IBAction)newWindow1:(id)sender;
{
    myWindow1Controller *wc=[[myWindow1Controller alloc] initWithWindowNibName:@"myWindow1"];
    [wc showWindow:sender];
    [wc.window center];
}

- (IBAction)newWindow2:(id)sender;
{
    myWindow2Controller *wc=[[myWindow2Controller alloc] initWithWindowNibName:@"myWindow2"];
    [wc showWindow:sender];
    [wc.window center];
}

- (IBAction)newWindow3:(id)sender;
{
    NSWindow *window=[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 300, 140)
                                                 styleMask:NSTitledWindowMask|NSClosableWindowMask
                                                   backing:NSBackingStoreBuffered
                                                     defer:YES];
    [window center];
    [window setTitle:@"Window 3"];
    NSWindowController *wc=[[NSWindowController alloc] initWithWindow:window];
    [wc showWindow:sender];
    [wc.window center];
    [window release];
}

- (IBAction)newWindow4:(id)sender;
{
    NSWindow *window=[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 190, 110)
                                                 styleMask:NSTitledWindowMask|NSClosableWindowMask
                                                   backing:NSBackingStoreBuffered
                                                     defer:YES];
    [window center];
    [window setTitle:@"Window 4"];
    [window orderFront:sender];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

@end
