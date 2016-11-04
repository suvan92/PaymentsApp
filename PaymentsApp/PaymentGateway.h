//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

-(void)processPayment:(NSInteger *)paymentAmount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, strong) id <PaymentDelegate> delegate;

-(void)processPaymentAmout:(NSInteger *)paymentAmout;

@end
