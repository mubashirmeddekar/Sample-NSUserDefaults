//
//  UserViewController.h
//  Sample NSUserDefaults
//
//  Created by Mubashir Meddekar on 2/09/2014.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;

- (IBAction)donePressed:(id)sender;
@end
