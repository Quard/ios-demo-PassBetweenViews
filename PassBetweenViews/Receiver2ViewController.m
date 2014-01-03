//
//  Receiver2ViewController.m
//  PassBetweenViews
//
//  Created by Vadym Zakovinko on 12/30/13.
//  Copyright (c) 2013 Vadym Zakovinko. All rights reserved.
//

#import "Receiver2ViewController.h"

@interface Receiver2ViewController ()

@end

@implementation Receiver2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.label.text = self.text;
}

@end
