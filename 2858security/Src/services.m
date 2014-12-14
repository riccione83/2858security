//
//  services.m
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "services.h"

@interface services ()

@end

@implementation services

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
    // Do any additional setup after loading the view.
    tw.delegate = self;
    
    _services = @[@"Centrale Operativa",@"Radiovigilanza",@"Videovigilanza",@"Sistemi Satellitari"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)gotoWebSite:(id)sender{
  //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.2858.it"]];
   /* UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"2858 Security" message:@"Per ulteriori informazioni vi invitiamo a collegarvi al sito www.2858.it" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
*/
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _services.count;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"I servizi 2858 Security";
}



-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    rowSelected = [indexPath row];
    [self performSegueWithIdentifier:@"showRecipeDetail" sender:self];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    rowSelected = [indexPath row];
    [self performSegueWithIdentifier:@"showRecipeDetail" sender:self];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
  //  NSLog(@"%d",indexPath.row);
}

/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *sectionName;
    switch (section)
    {
        case 0:
            sectionName = NSLocalizedString(@"mySectionName", @"mySectionName");
            break;
        case 1:
            sectionName = NSLocalizedString(@"myOtherSectionName", @"myOtherSectionName");
            break;
            // ...
        default:
            sectionName = @"";
            break;
    }
    return sectionName;
}*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //static NSString *simpleTableIdentifier = @"SimpleTableItem";
    static NSString *simpleTableIdentifier = @"p";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.backgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    cell.textLabel.text = [_services objectAtIndex:indexPath.row];
    
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        service *destViewController = segue.destinationViewController;
        destViewController.serviceSelected = rowSelected;
    }
}


@end
