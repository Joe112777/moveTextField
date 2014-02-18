//
//  ViewController.h
//  moveTextField
//
//  Created by Joe437 on 2014/2/18.
//  Copyright (c) 2014年 Joe437. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)typeInText:(id)sender;

@end
