//
//  TestViewController.m
//  TestLeak
//
//  Created by Aaron Sarazan on 6/2/13.
//  Copyright (c) 2013 Cue. All rights reserved.
//

#import "TestViewController.h"
#import "ReproWithARC.h"
#import "ReproWithoutARC.h"

@implementation TestViewController

- (void)reproWithARC:(id)sender;
{
    [ReproWithARC repro];
}

- (void)reproWithoutARC:(id)sender;
{
    [ReproWithoutARC repro];
}

@end
