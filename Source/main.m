/*
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2 License
 */

#import "AppDelegate.h"
#import <Cocoa/Cocoa.h>

int main(int argc, const char *argv[]) {

  @autoreleasepool {
    [NSApplication sharedApplication];
    NSLog(@"%s", argv[0]);
    AppDelegate *controller = [AppDelegate new];
    [[NSApplication sharedApplication] setDelegate:controller];

    NSApplicationMain(argc, argv);
  }
  return 0;
}
