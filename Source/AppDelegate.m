/*
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2 License
 */

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  _window = [[SSBWindow alloc] init];
  [_window setDelegate:self];
}

- (void)dealloc {
  [_window release];
  [super dealloc];
}

@end
