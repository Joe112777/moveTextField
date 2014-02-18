//
//  ViewController.m
//  moveTextField
//
//  Created by Joe437 on 2014/2/18.
//  Copyright (c) 2014年 Joe437. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myTextField.delegate=self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)typeInText:(id)sender {
    
    self.myLabel.text=self.myTextField.text;

}
-(void)textFieldDidBeginEditing:(UITextView *)textField
{
    float offset =-150;
    NSTimeInterval animationDuration = 0.30f;
    [UIView beginAnimations:@"ResizeForKeyBoard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    float width = self.view.frame.size.width;
    float height=self.view.frame.size.height;
    CGRect rect = CGRectMake(0.0f, offset, width, height);
    self.view.frame=rect;
    [UIView commitAnimations];
}

-(void)textFieldDidEndEditing:(UITextView *)textField
{
    float offset =0;
    NSTimeInterval animationDuration = 0.30f;
    [UIView beginAnimations:@"ResizeForKeyBoard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    float width = self.view.frame.size.width;
    float height = self.view.frame.size.height;
    CGRect rect=CGRectMake(0.0f, offset, width, height);
    self.view.frame=rect;
    [UIView commitAnimations];
}


@end
