//
//  ViewController.m
//  dropdownlist
//
//  Created by macserver on 4/12/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"
#import "dropdownTableViewCell.h"

@interface ViewController ()
{
    UITableViewCell *cell;
    NSMutableArray *class;
    BOOL *yesno;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    class=[NSMutableArray arrayWithObjects:@"5th",@"10th",@"12ht",@"Graduatation", nil];
  
    [self.tableview setHidden:YES];
    
    
    [super viewDidLoad];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return class.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell=[tableView dequeueReusableCellWithIdentifier:@"dropdownTableViewCell"];
    cell.textLabel.text=[class objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   [self.buttonot setTitle:[class objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    
    NSLog(@"%@",[class objectAtIndex:indexPath.row]);
    
    
    //self.textfld.text=[class objectAtIndex:indexPath.row];
    
   
    
   
    
}
-(void)pageDown
{
    [UITableView beginAnimations:nil context:NULL];
    [UITableView setAnimationDuration:1.0];
    [UITableView setAnimationTransition:UITableViewCellStyleValue2 forView:self.tableview cache:YES];
    
    [UITableView commitAnimations];
}

-(void)pageUP
{
    [UITableView beginAnimations:nil context:NULL];
    [UITableView setAnimationDuration:1.0];
    [UITableView setAnimationTransition:UITableViewRowAnimationRight forView:self.tableview cache:YES];
    
    [UITableView commitAnimations];
}


- (IBAction)buttonaction:(id)sender {
    
    if(yesno==YES)
    {
        [self.tableview setHidden:NO];
    yesno=NO;
       [self pageDown];
    }
    else
    {
        [self.tableview setHidden:YES];
    yesno=YES;
        [self pageUP];
    }
    
    
}
- (IBAction)btncls:(id)sender {
    
     [class addObject:self.textfld.text];
}
@end
