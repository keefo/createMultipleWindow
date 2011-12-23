//
//  AppDelegate.h
//  createMultipleWindow
//
//  Created by xu lian on 11-12-23.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "myWindow1Controller.h"
#import "myWindow2Controller.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (IBAction)newWindow1:(id)sender;
- (IBAction)newWindow2:(id)sender;
- (IBAction)newWindow3:(id)sender;
- (IBAction)newWindow4:(id)sender;

@end
