//
//  preventivo.m
//  2858security
//
//  Created by Riccardo Rizzo on 12/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "preventivo.h"

@interface preventivo ()

@end

@implementation preventivo

@synthesize numOfRoom;
@synthesize onOffExtern;
@synthesize impiantoPresente;
@synthesize description;

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
     mc = [[MFMailComposeViewController alloc] init];
     mc.mailComposeDelegate = self;
    // Do any additional setup after loading the view.
    [preventivoImage setUserInteractionEnabled:YES];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myTapMethod)];
    [tap setNumberOfTouchesRequired:1];
    [tap setNumberOfTapsRequired:1];
    [preventivoImage addGestureRecognizer:tap];
    description.delegate = self;
    
   // UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myTapMethod2)];
  //  tap2.numberOfTapsRequired = 1;
  //  [description addGestureRecognizer:tap2];

}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    NSLog(@"TAP2");
    [UIView animateWithDuration:0.5 animations:^{
        CGAffineTransform trasform = CGAffineTransformMakeTranslation(0, -180);
        description.transform = trasform;
    }];
}

- (void)myTapMethod2
{
    NSLog(@"TAP2");
   // [description respondsToSelector:nil];
    [UIView animateWithDuration:0.5 animations:^{
        CGAffineTransform trasform = CGAffineTransformMakeTranslation(0, -200);
        description.transform = trasform;
    }];
}

- (void)myTapMethod
{
    NSLog(@"TAP");
    [description resignFirstResponder];
    [numOfRoom resignFirstResponder];
    [UIView animateWithDuration:0.5 animations:^{
        CGAffineTransform trasform = CGAffineTransformMakeTranslation(0, 0);
        description.transform = trasform;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



-(IBAction)sendPreventivo:(id)sender{
    NSString *emailTitle = @"Richiesta preventivo dall'APP 2858";
    NSArray *toRecipients = [NSArray arrayWithObject:@"2858@2858.it"];
    NSString *messageBody=@"";
    NSString *message=@"";

    
    if(numOfRoom.text)
    {
        message = [NSString stringWithFormat:@"Numero di stanze da proteggere: %@",numOfRoom.text];
    }
    
    message = [NSString stringWithFormat:@"%@ <br>Desideri proteggere anche l'esterno? =>  %@",message,onOffExtern.isOn ? @"Si" : @"No"];
    
    
    message = [NSString stringWithFormat:@"%@ <br>Possiedi già un impianto di allarme? =>  %@",message,impiantoPresente.isOn ? @"Si" : @"No"];
    
    message = [NSString stringWithFormat:@"%@ <br>Descrizione aggiuntiva: %@",message,description.text];
    
    
    messageBody = [NSString stringWithFormat:@"Richiesta di preventivo:<br> %@ <br>",message];
    
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
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
