//
//  PreferencesWindowController.m
//  PrefWindowApp
//
//  Created by Genji on 11/12/19.
//  Copyright (c) 2011 Genji App. All rights reserved.
//

#import "PreferencesWindowController.h"

@implementation PreferencesWindowController

- (id)initWithWindow:(NSWindow *)window
{
  self = [super initWithWindow:window];
  if (self) {
    // Initialization code here.
  }
  
  return self;
}

- (void)windowDidLoad
{
  [super windowDidLoad];
  
  // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)awakeFromNib
{
  NSWindow *window = [self window];
  NSToolbar *toolbar = [window toolbar];
  NSArray *toolbarItems = [toolbar items];
  NSToolbarItem *item = [toolbarItems objectAtIndex:0];

  [toolbar setSelectedItemIdentifier:[item itemIdentifier]];
  [self switchView:item];
  [window center];
}

#pragma mark -
#pragma mark Action Method
- (IBAction)switchView:(id)sender
{
  NSWindow *window = [self window];
  NSView *contentView = [window contentView];

  NSArray *subviews = [contentView subviews];
  if([subviews count]) {
    NSView *currentView = [subviews objectAtIndex:0];
    [currentView removeFromSuperview];
  }

  NSToolbarItem *item = (NSToolbarItem *)sender;
  NSString *title = [item label];
  [window setTitle:title];

  NSView *newView = nil;
  switch([item tag]) {
    case PreferencesViewGeneral:
      newView = generalView_;
      break;
    case PreferencesViewAdvanced:
      newView = advancedView_;
      break;
    default:
      return;
  }

  NSRect windowFrame = [window frame];
  NSRect contentFrame = [contentView frame];
  CGFloat windowAccessoryHeight = windowFrame.size.height - contentFrame.size.height;
  CGFloat newWindowWidth = [newView frame].size.width;
  CGFloat newWindowHeight = windowAccessoryHeight + [newView frame].size.height;
  CGFloat newWindowOrginY = windowFrame.origin.y + windowFrame.size.height - newWindowHeight;
  NSRect newWindowFrame = NSMakeRect(windowFrame.origin.x,
                                     newWindowOrginY,
                                     newWindowWidth,
                                     newWindowHeight);
  [window setFrame:newWindowFrame display:YES animate:YES];

  [contentView addSubview:newView];
}

@end
