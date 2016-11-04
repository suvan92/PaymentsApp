//
//  InputHandler.m
//  PaymentsApp
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler


-(NSString *)inputForPrompt:(NSString *)inputPrompt {
    
    NSLog(@"%@", inputPrompt);
    
    char stringCInput[255];
    
    fgets(stringCInput, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:stringCInput encoding:NSUTF8StringEncoding];
    
    [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return inputString;
}

@end
