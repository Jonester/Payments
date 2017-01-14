//
//  InputCollector.m
//  Payments
//
//  Created by Chris Jones on 2017-01-13.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+(NSString *)collectInfo {
    char input [255];
    fgets(input, 255, stdin);
    
    return [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
