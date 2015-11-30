//
//  ViewController.m
//  Calculator
//
//  Created by Admin on 24.11.15.
//  Copyright (c) 2015 Serhiy_Sharga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butPress:(UIButton *)sender {
    long taga = sender.tag;
    
    self.labelResult.text = [NSString stringWithFormat:@"%li",taga];
}
@end
