//
//  ViewController.h
//  Custom UIActionSheet
//
//  Created by Lieu, Klein on 10/21/13.
//  Copyright (c) 2013 Constant Contact. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIActionSheet.h"

@interface ViewController : UIViewController <UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@property (weak, nonatomic) IBOutlet UIButton *datePickerButton;

- (IBAction)triggerDatePicker:(id)sender;

@end
