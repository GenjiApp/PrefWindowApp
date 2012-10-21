//
//  AppDelegate.h
//  PrefWindowApp
//
//  Created by Genji on 2012/10/21.
//
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (IBAction)showPreferencesWindow:(id)sender;

@end
