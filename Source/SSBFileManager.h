/* 
 * Copyright (c) 2022 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2 License
 */

#import <Cocoa/Cocoa.h>


@interface SSBFileManager : NSObject 
@property (strong, nonatomic) NSString *rootPath;
@property (strong, nonatomic) NSString *bundlePath;

- (instancetype) init;
- (NSString*) filePath:(NSString*) name;
- (void) save:(id) object to:(NSString*)name;

@end
