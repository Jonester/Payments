//
//  PayPalPaymentService.m
//  Payments
//
//  Created by Chris Jones on 2017-01-13.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PayPalPaymentService.h"

@implementation PayPalPaymentService

-(BOOL)canProcessPayment {
    NSInteger canProcess = arc4random_uniform(2);
    if (canProcess == 0) {
        NSLog(@"We apologize. PayPal cannot process your payment at this time.");
        return NO;
    } else {
        return YES;
    }
}

-(void)processPaymentAmount:(NSInteger)billAmount {
    NSLog(@"Your payment of $%ld has been processed. Thank you for using Amazon.", billAmount);
}

@end
