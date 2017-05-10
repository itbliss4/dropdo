//
//  ViewController.h
//  dropdownlist
//
//  Created by macserver on 4/12/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dropdownTableViewCell.h"

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>

- (IBAction)buttonaction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UIButton *buttonot;
@property (weak, nonatomic) IBOutlet UITextField *textfld;
- (IBAction)btncls:(id)sender;

@end

