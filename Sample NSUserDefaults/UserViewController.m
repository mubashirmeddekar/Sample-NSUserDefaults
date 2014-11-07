//
//  UserViewController.m
//  Sample NSUserDefaults
//
//  Created by Mubashir Meddekar on 2/09/2014.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController
@synthesize myText,passwordText;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *textDefault = [NSUserDefaults standardUserDefaults];
    
    myText.text = [textDefault objectForKey:@"MyText"];
    passwordText.text = [textDefault objectForKey:@"passwordText"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)donePressed:(id)sender {
    NSString *str = myText.text;
    NSString *password = passwordText.text;
    
    NSUserDefaults *storeText = [NSUserDefaults standardUserDefaults];
    
    [storeText setObject:str forKey:@"MyText"];
    [storeText setObject:password forKey:@"passwordText"];
}

@end
