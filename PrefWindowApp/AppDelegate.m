//
//  AppDelegate.m
//  PrefWindowApp
//
//  Created by Genji on 2012/10/21.
//
//

#import "AppDelegate.h"
#import "PreferencesWindowController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application
}

#pragma mark -
#pragma mark Action Method
- (IBAction)showPreferencesWindow:(id)sender
{
  PreferencesWindowController *sharedController = [PreferencesWindowController sharedPreferencesWindowController];
  [sharedController showWindow:sender];
}

@end
