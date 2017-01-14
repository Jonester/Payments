//
//  PaymentGateway.h
//  Payments
//
//  Created by Chris Jones on 2017-01-13.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)billAmount;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

-(void)processPaymentAmount:(NSInteger)billAmount;

@end
