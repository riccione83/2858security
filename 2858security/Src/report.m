//
//  report.m
//  2858security
//
//  Created by Riccardo Rizzo on 24/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "report.h"

@interface report ()

@end

@implementation report

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

-(IBAction)sendTechnicalQuestion:(id)sender{
    BOOL ok = true;
    
    NSString *emailTitle = @"Segnalazione problema tecnico - App 2858 security";
    
    
    NSString *messageBody =[NSString stringWithFormat:@"Problema tecnico:<br> Nome: %@ <br>Indirizzo: %@ <br>Azienda:%@ <br>Contatto:%@ <br>Descrizione del problema:%@ ",[name text],[address text],[company text],[contact text],[description text]];
    
    NSArray *toRecipients = [NSArray arrayWithObject:@"2858@2858.it"];
    
    if(name.text.length == 0) {
        name.backgroundColor = [UIColor redColor];
        ok = false;
    }
    if(address.text.length == 0) {
        address.backgroundColor = [UIColor redColor];
        ok = false;
    }
    if(contact.text.length == 0) {
        contact.backgroundColor = [UIColor redColor];
        ok = false;
    }
    if(description.text.length == 0) {
        description.backgroundColor = [UIColor redColor];
        ok = false;
    }
    
    if(ok) {
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipients];
    
    [self presentViewController:mc animated:YES completion:NULL];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"2858 Security" message:@"Prego riempire tutti i campi obbligatori" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    NSString *eres = @"";
     name.backgroundColor = [UIColor whiteColor];
     address.backgroundColor = [UIColor whiteColor];
     contact.backgroundColor = [UIColor whiteColor];
     description.backgroundColor = [UIColor whiteColor];
    
    switch (result) {
        case MFMailComposeResultCancelled:
            eres = @"Email annullata";
            break;
        case MFMailComposeResultSaved:
            eres = @"Email salvata con successo";
            name.text=@"";
            address.text=@"";
            company.text=@"";
            contact.text=@"";
            description.text=@"";
            break;
        case MFMailComposeResultFailed:
            eres = @"Errore nell'invio.";
            break;
        case MFMailComposeResultSent:
            eres = @"Email inviata correttamente.";
            name.text=@"";
            address.text=@"";
            company.text=@"";
            contact.text=@"";
            description.text=@"";
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
