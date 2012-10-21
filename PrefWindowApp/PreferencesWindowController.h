//
//  PreferencesWindowController.h
//  PrefWindowApp
//
//  Created by Genji on 2012/10/21.
//
//

#import <Cocoa/Cocoa.h>

@interface PreferencesPanel : NSPanel

@end

@interface PreferencesWindowController : NSWindowController

+ (PreferencesWindowController *)sharedPreferencesWindowController;

@end
