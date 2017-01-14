//
//  PaymentGateway.m
//  Payments
//
//  Created by Chris Jones on 2017-01-13.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)billAmount {
    if([self.delegate canProcessPayment]) {
    [self.delegate processPaymentAmount:billAmount];
    }
    
}

@end
