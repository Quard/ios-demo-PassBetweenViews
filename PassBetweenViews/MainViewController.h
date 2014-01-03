//
//  MainViewController.h
//  PassBetweenViews
//
//  Created by Vadym Zakovinko on 12/30/13.
//  Copyright (c) 2013 Vadym Zakovinko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SenderViewController.h"

@interface MainViewController : UITableViewController <SenderViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *passToStoryboardTextField;
@property (weak, nonatomic) IBOutlet UITextField *passManualTextField;
@property (weak, nonatomic) IBOutlet UILabel *receiveLabel;

@end
