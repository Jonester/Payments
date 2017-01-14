//
//  main.m
//  Payments
//
//  Created by Chris Jones on 2017-01-13.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PayPalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

typedef NS_ENUM(NSInteger, PaymentChoices) {PayPal = 1, Stripe = 2, Amazon = 3};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        PayPalPaymentService *payPal = [PayPalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        
        NSInteger redo = 0;
        
        NSInteger billAmount = arc4random_uniform(900) + 100;
        
        do {
            
        NSLog(@"\n\nThank you for shopping at Acme.com. Your total today is $%@. Please select your payment method:\n\n 1: Paypal\n 2: Stripe\n 3: Amazon\n", @(billAmount));
        
        NSInteger userChoice = [[InputCollector collectInfo] integerValue];
            redo ++;
        switch (userChoice) {
            case PayPal:{
                paymentGateway.delegate = payPal;
        }
                break;
            case Stripe:{
                paymentGateway.delegate = stripe;
            }
                break;
            case Amazon:{
                paymentGateway.delegate = amazon;
            }
            default:
                NSLog(@"\n\nThat was an invalid entry. Please try again.");
                redo++;
                break;
        }
        
        [paymentGateway processPaymentAmount:billAmount];
        
        } while (redo == 2);
    }
    return 0;
}
