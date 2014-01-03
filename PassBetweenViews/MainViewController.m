//
//  MainViewController.m
//  PassBetweenViews
//
//  Created by Vadym Zakovinko on 12/30/13.
//  Copyright (c) 2013 Vadym Zakovinko. All rights reserved.
//

#import "MainViewController.h"
#import "ReceiverViewController.h"
#import "Receiver2ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        Receiver2ViewController *view = [[Receiver2ViewController alloc] initWithNibName:@"Receiver2ViewController" bundle:nil];
        view.text = self.passManualTextField.text;
        [self.navigationController pushViewController:view animated:YES];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"PassToStoryboard"]) {
        ReceiverViewController *view = segue.destinationViewController;
        view.text = self.passToStoryboardTextField.text;
    } else if ([[segue identifier] isEqualToString:@"ReceiveFrom"]) {
        SenderViewController *view = segue.destinationViewController;
        view.delegate = self;
    }
}

- (void)senderViewController:(SenderViewController *)viewController textUpdated:(NSString *)text {
    self.receiveLabel.text = text;
}

@end
