//
//  ViewController.m
//  Custom UIActionSheet
//
//  Created by Lieu, Klein on 10/21/13.
//  Copyright (c) 2013 Constant Contact. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) scheduleCampaign:(UIDatePicker *)sender {
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    NSLog(@"Picked the date %@", [dateFormatter stringFromDate:[sender date]]);
}

- (IBAction)triggerDatePicker:(id)sender
{
    CustomUIActionSheet* myCustomActionSheet = [[CustomUIActionSheet alloc] initWithTitle:nil
                                                                            delegate:self
                                                                            cancelButtonTitle:@"Cancel"
                                                                            destructiveButtonTitle:nil
                                                                            otherButtonTitles:@"Confirm", nil];
    
    UIDatePicker *pickerView = [[UIDatePicker alloc] init];
    pickerView.datePickerMode = UIDatePickerModeDateAndTime;
    [pickerView addTarget:self action:@selector(scheduleCampaign:) forControlEvents:UIControlEventValueChanged];
    
    CGRect pickerRect = pickerView.bounds;
    pickerRect.origin.y = 250;
    pickerRect.size.width = 300;
    pickerView.bounds = pickerRect;
    [pickerView setBackgroundColor:[UIColor clearColor]];
    
    UIToolbar* blurBackgroundToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, pickerView.bounds.size.width, pickerView.bounds.size.height)];
    
    [pickerView insertSubview:blurBackgroundToolbar atIndex:0];
    
    [myCustomActionSheet addSubview:pickerView];
    [myCustomActionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
     UIDatePicker *pickerView;
    
    for (UIView* sub in [actionSheet subviews]) {
        if  ([sub isKindOfClass:[UIDatePicker class]]) {
            pickerView = (UIDatePicker *)sub;
        }
    }
    
    [self scheduleCampaign:pickerView];
    pickerView.alpha = 0;
}

@end
