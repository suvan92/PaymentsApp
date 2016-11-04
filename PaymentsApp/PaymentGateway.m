//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmout:(NSInteger *)paymentAmount {
    
    [self.delegate processPayment:paymentAmount];
    
}

@end
