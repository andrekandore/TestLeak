//
//  ReproWithoutARC.m
//  TestLeak
//
//  Created by Aaron Sarazan on 6/2/13.
//  Copyright (c) 2013 Cue. All rights reserved.
//

#import "ReproWithoutARC.h"

@implementation ReproWithoutARC

+ (void)repro;
{
    @autoreleasepool {
        NSData *data = [[NSData alloc] initWithBytes:"a" length:1];
        NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
        NSURLResponse *response =
        [[NSURLResponse alloc] initWithURL:url
                                  MIMEType:@"text/html"
                     expectedContentLength:0
                          textEncodingName:@"utf-8"];
        NSCachedURLResponse *cached =
        [[NSCachedURLResponse alloc] initWithResponse:response data:data];
        [response release];
        [cached data]; // Trigger the leak by hitting the accessor.
        [cached release];
        [data release];
    }
}

@end
