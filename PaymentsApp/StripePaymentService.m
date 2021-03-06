//
//  StripePaymentService.m
//  PaymentsApp
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPayment:(NSInteger *)paymentAmount; {
    
    NSLog(@"Payment delgegate was Stripe");
    
//    NSString *outputString = [NSString stringWithFormat:@"Payment delegate was Stripe"];
//    
//    return outputString;
    
}

-(BOOL)canProcessPayment {
    
    int paymentServiceAvailable;
    
    int lowerBound = 1;
    int upperBound = 10;
    
    paymentServiceAvailable = lowerBound + arc4random() % (upperBound - lowerBound);
    
    if (paymentServiceAvailable % 2 == 0) {
        return YES;
    } else {
        return NO;
    }
}

@end
