//
//  main.m
//  PaymentsApp
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *userInput = [InputHandler new];
        
        int lowerBound = 100;
        int upperBound = 1000;
        
        NSInteger paymentTotal = (NSInteger)(lowerBound + arc4random() % (upperBound - lowerBound));
        
        NSString *paymentMethod = [userInput inputForPrompt:[NSString stringWithFormat:@"\nThank you for shopping at Acme.com. Your total today is: $%ld Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon", (long)paymentTotal]];
        
        
        int paymentMethodInt = [paymentMethod intValue];
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        
        if (paymentMethodInt == 1) {
            PaypalPaymentService *paypalPS = [PaypalPaymentService new];
            paymentGateway.delegate = paypalPS;
            
            NSLog(@"Payment method is Paypal");
            
        } else if (paymentMethodInt == 2) {
            StripePaymentService *stripePS = [StripePaymentService new];
            paymentGateway.delegate = stripePS;
            
            NSLog(@"Payment method is Stripe");
        } else if (paymentMethodInt == 3) {
            AmazonPaymentService *amazonPS = [AmazonPaymentService new];
            paymentGateway.delegate = amazonPS;
            
            NSLog(@"Payment method is Amazon");
        }
        
        [paymentGateway processPaymentAmout:&paymentTotal];
        
        NSLog(@"%d", paymentMethodInt);
        
        
    }
    return 0;
}
