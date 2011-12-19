//
//  PreferencesWindowController.h
//  PrefWindowApp
//
//  Created by Genji on 11/12/19.
//  Copyright (c) 2011 Genji App. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 * Tags of each views that are managed in Preferences Window.
 */
typedef enum {
  PreferencesViewGeneral = 100,
  PreferencesViewAdvanced,
} PreferencesViewType;

/**
 * A controller object for Preferens Window.
 */
@interface PreferencesWindowController : NSWindowController
{
  /**
   * Outlets of each views that are managed in Preferences Window.
   */
  IBOutlet NSView *generalView_;
  IBOutlet NSView *advancedView_;
}

/**
 * Switch view of Preferences Window.
 *
 * This action is invoked by clicking item
 * of toolbar of Preferences Window.
 *
 * @param sender NSToolbarItem object.
 */
- (IBAction)switchView:(id)sender;

@end
