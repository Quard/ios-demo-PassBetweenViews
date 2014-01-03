//
//  SenderViewController.h
//  PassBetweenViews
//
//  Created by Vadym Zakovinko on 12/30/13.
//  Copyright (c) 2013 Vadym Zakovinko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SenderViewController;

@protocol SenderViewControllerDelegate <NSObject>

- (void)senderViewController:(SenderViewController *)viewController textUpdated:(NSString *)text;

@end

@interface SenderViewController : UIViewController

@property (weak, nonatomic) id <SenderViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *text;

- (IBAction)textUpdated:(id)sender;

@end
