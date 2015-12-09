//
//  ASMain.m
//  Calculator
//
//  Created by Admin on 07.12.15.
//  Copyright (c) 2015 Serhiy_Sharga. All rights reserved.
//

#import "ASMain.h"

@implementation ASMain

- (CGFloat)secondNumber:(CGFloat)number {

    CGFloat result = self.firstNumber;
    
    if ([self.operations isEqualToString:@"x"]) {
        result *= number;
    }
    else if ([self.operations isEqualToString:@"/"]) {
        result /= number;
        
    }
    else if ([self.operations isEqualToString:@"+"]) {
        result += number;
        
    }
    else if ([self.operations isEqualToString:@"-"]) {
        result -= number;
        
    }
    return result;
}
@end

