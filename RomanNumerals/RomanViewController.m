//
//  ViewController.m
//  RomanNumerals
//
//  Created by Abdo Assem on 3/30/16.
//  Copyright © 2016 abdoassem. All rights reserved.
//

#import "RomanViewController.h"

@interface RomanViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *responseLabel;

@end

@implementation RomanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onConvertButonPressed:(id)sender {
    NSString *normalNumber = self.numberTextField.text;
    NSUInteger intNumber = [normalNumber integerValue];
    
    NSMutableString *romanNumber = [[NSMutableString alloc] init];
    
    while (intNumber >1000)
    {
            [romanNumber appendString:@"M"];
            intNumber -= 1000;
    }
    while (intNumber >500)
    {
        [romanNumber appendString:@"D"];
        intNumber -= 500;
    }
    while (intNumber >100)
    {
        [romanNumber appendString:@"C"];
        intNumber -= 100;
    }
    while (intNumber >50)
    {
        [romanNumber appendString:@"L"];
        intNumber -= 50;
    }
    while (intNumber >10)
    {
        [romanNumber appendString:@"X"];
        intNumber -= 10;
    }
    while (intNumber >5)
    {
        [romanNumber appendString:@"V"];
        intNumber -= 5;
    }
    while (intNumber >1)
    {
        [romanNumber appendString:@"I"];
        intNumber -= 1;
        self.responseLabel.text =romanNumber;

    }

}
@end


