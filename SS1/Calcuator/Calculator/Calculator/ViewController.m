//
//  ViewController.m
//  Calculator
//
//  Created by Admin on 24.11.15.
//  Copyright (c) 2015 Serhiy_Sharga. All rights reserved.
//

#import "ViewController.h"
#import "ASMain.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *resultView;
@property (strong, nonatomic) ASMain *main;
@property (nonatomic) BOOL 	nextOperation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.main =	[[ASMain alloc] init];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)equalPush:(UIButton *)sender {

   
    CGFloat result = [self.main secondNumber:self.resultView.text.floatValue];
    self.resultView.text = 	[NSString stringWithFormat:@"%f", result];
    self.main.firstNumber = result;

}



- (IBAction)operationPush:(UIButton *)sender {
    
    self.main.operations = sender.titleLabel.text;
    self.main.firstNumber = self.resultView.text.floatValue;
    
    self.nextOperation = YES;
}



- (IBAction)numberPush:(UIButton *)sender {
    
    NSString *result = self.resultView.text;
    if ([result isEqualToString:@"0"] || self.nextOperation) {
        	result = @"";
        self.nextOperation = NO;
    }
    result = [result stringByAppendingString:sender.titleLabel.text];
    
    self.resultView.text = result;
    
}

- (IBAction)clearPush:(UIButton *)sender {
    
    self.resultView.text = @"0";
    self.main.operations = nil;
}


@end
