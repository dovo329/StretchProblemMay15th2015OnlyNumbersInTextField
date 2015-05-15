//
//  ViewController.m
//  StretchProblemFriMay15th2015
//
//  Created by Douglas Voss on 5/15/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.view.frame = self.navigationController.view.frame;
        self.view.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(15, 80, 300, 40)];
    textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
    textField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#define POSITIVEINTEGERS @"0123456789"
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *characterSet = [[NSCharacterSet characterSetWithCharactersInString:POSITIVEINTEGERS] invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:characterSet] componentsJoinedByString:@""];
    BOOL basicTest = [string isEqualToString:filtered];
    return basicTest;
}
*/

#define POSITIVEINTEGETRS @"0123456789"
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    // Only allows numbers in text field
    NSCharacterSet *characterSet = [[NSCharacterSet characterSetWithCharactersInString:POSITIVEINTEGETRS] invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:characterSet]     componentsJoinedByString:@""];
    BOOL basicTest = [string isEqualToString:filtered];
    return basicTest;
}

@end
