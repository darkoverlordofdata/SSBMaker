/*
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2
 */
#import "SSBFileManager.h"
#import <Cocoa/Cocoa.h>

@implementation SSBFileManager
@synthesize rootPath = _rootPath;

- (instancetype)init {
  _rootPath = [NSProcessInfo.processInfo.arguments[0]
      stringByDeletingLastPathComponent];

  _bundlePath = [[NSBundle mainBundle] bundlePath]; 

  NSLog(@"rootPath=%@", _rootPath);
  NSLog(@"bundlePath=%@", _bundlePath);

  return self;
}

- (NSString *)filePath:(NSString *)name {
  return [NSString stringWithFormat:@"%@/%@/%@", _rootPath, @"Resources", name];
}

- (void)save:(id)object to:(NSString *)name {
  NSError *error;

  NSString *path = [self filePath:name];
  if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
    NSString *bundle = [[NSBundle mainBundle] pathForResource:name
                                                       ofType:@"plist"];
    [[NSFileManager defaultManager] copyItemAtPath:bundle
                                            toPath:path
                                             error:&error];
  }
  [object writeToFile:path atomically:YES];
}

@end