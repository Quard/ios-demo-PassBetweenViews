//
//  ReceiveViewController.h
//  PassBetweenViews
//
//  Created by Vadym Zakovinko on 12/30/13.
//  Copyright (c) 2013 Vadym Zakovinko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceiverViewController : UIViewController

@property (nonatomic) NSString *text;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
