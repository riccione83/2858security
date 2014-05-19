//
//  contact.m
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "contact.h"


@interface contact ()

@end

@implementation contact

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)contactByEmail:(id)sender{
    NSString *emailTitle = @"Contatto dall'APP 2858";
    NSString *messageBody =@"Richiesta informazioni:";
    NSArray *toRecipients = [NSArray arrayWithObject:@"2858@2858.it"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipients];
    
    [self presentViewController:mc animated:YES completion:NULL];
}


-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    NSString *eres = @"";
    
    switch (result) {
        case MFMailComposeResultCancelled:
            eres = @"Email annullata";
            break;
        case MFMailComposeResultSaved:
            eres = @"Email salvata con successo";
            break;
        case MFMailComposeResultFailed:
            eres = @"Errore nell'invio.";
            break;
        case MFMailComposeResultSent:
            eres = @"Email inviata correttamente.";
            break;
        default:
            eres = nil;
            break;
    }
    
    if(eres!=nil)
    {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"2858 Security" message:eres delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(IBAction)contactByPhone:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:+390952858"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
