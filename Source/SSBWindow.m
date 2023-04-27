/* 
 * Copyright (c) 2023 bruce davidson <darkoverlordofdata@gmail.com>.
 *
 * GPL2
 */
#import <Cocoa/Cocoa.h>
#import "SSBWindow.h"
#import "SSBFileManager.h"

@implementation SSBWindow
- (instancetype)init 
{

	NSSize resolution =  [[NSScreen mainScreen] frame].size;

	CGFloat w = 640;
	CGFloat h = 400;
	CGFloat x = resolution.width/2 - w/2;
	CGFloat y = resolution.height/2 - h/2;

	[super initWithContentRect:NSMakeRect(x, y, w, h) styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable backing:NSBackingStoreBuffered defer:NO];
	[self setTitle:@"SSBMaker"];

	if ([NSWindow instancesRespondToSelector:@selector(setIsVisible:)]) {
		// The latest version on Linux has fixed this!
		[self setIsVisible:YES];
	} else {
		// But the latest version on FreeBSD doesn't have the fix yet...
  		[self orderFrontRegardless];
	}

	// List all the SSB's installed in a grid
	// first one is the Create button

	NSArray* array = @[ @"One", @"Two", @"Three" ];

	NSDictionary* dict = @{
		@"Key1": @"Value1",
		@"Key2": @"Value2",
	};

	SSBFileManager* fm = [SSBFileManager new];
	[fm save:array to:@"MyArray"];
	[fm save:dict to:@"MyDict"];


	return self;
}


- (BOOL)windowShouldClose:(id)sender 
{
	[NSApp terminate:sender];
	return YES;
}

@end

