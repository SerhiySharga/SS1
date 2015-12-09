//
//  ASMain.h
//  Calculator
//
//  Created by Admin on 07.12.15.
//  Copyright (c) 2015 Serhiy_Sharga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"


@interface ASMain : NSObject
@property (nonatomic, assign) NSString* operations;

@property (nonatomic, assign) NSInteger firstNumber; //currentOperand
//@property (nonatomic, assign) NSInteger secondNumber;
//@property (nonatomic, assign) CGFloat secondNumber;

//@property (nonatomic, assign) CGFloat resultNumber;

- (CGFloat)secondNumber:(CGFloat)number;



@end
