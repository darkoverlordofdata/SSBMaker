/* 
 * Copyright (c) 2022 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2 License
 */

#import <Cocoa/Cocoa.h>


@interface SSBFileManager : NSObject 
{
    NSString* _rootPath;
}
@property (strong, nonatomic) NSString *rootPath;

- (instancetype) init;
- (NSString*) filePath:(NSString*) name;
- (void) save:(id) object to:(NSString*)name;

@end
