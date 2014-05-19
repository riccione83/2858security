//
//  service.m
//  2858security
//
//  Created by Riccardo Rizzo on 03/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "service.h"

@interface service ()

@end

@implementation service

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
 //   description.text = _serviceSelected;    // Do any additional setup after loading the view.
    
  //  @"Radiovigilanza",@"Videovigilanza",@"Trasporto valori",@"Piantonamenti",@"Satellitari",@"Ricerca&Sviluppo"
    [self generaDescrizioni];
    if(_serviceSelected == 0)  //centrale operativa
    {
        foto.image = [UIImage imageNamed:@"co.jpg"];
        description.text = desc0;  //radiovigilanza
    }
    else if(_serviceSelected == 1) {
         foto.image = [UIImage imageNamed:@"radioall.jpg"];
        description.text = desc1; //videovigilanza
    }
    else if (_serviceSelected == 2) {
         foto.image = [UIImage imageNamed:@"video.jpg"];
        description.text =desc2;
    }
    else if (_serviceSelected == 3) {
         foto.image = [UIImage imageNamed:@"sat.jpg"];
        description.text = desc3;
    }
   /*else if (_serviceSelected == 4) {
        description.text = desc3; //@"Satellitari";
    }
    else if (_serviceSelected == 5) {
        description.text = @"Ricerca&Sviluppo";
    }*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)generaDescrizioni {
    desc0 = @"La Centrale Operativa \n"
    
    "La Centrale nasce nel 2007 sulla base di specifiche ricerche nel campo hardware e software e progettata nei minimi particolari anche da un punto di vista ingegneristico-strutturale, al fine di garantirne l’inattaccabilità e la salvaguardia di dispositivi e uomini. La struttura al suo interno è suddivisa in due settori: la sala rack e la sala postazioni. La prima alloggia tutte le strutture hardware in un ambiente a temperatura e umidità controllate, al fine di assicurarne l’integrità ed il corretto funzionamento; la seconda è composta da quattro postazioni, cablate con le moderne tecnologie in fibra ottica, che ospitano le GPG -Operatori di Centrale-, specializzate in sistemi informatici di gestione allarmi, con diversi anni di esperienza che lavorano in base a determinate procedure e protocolli codificati al fine di garantire tempestività e tracciabilità dell’intervento e riservatezza dei dati sensibili. \n"
   " Il centralino telefonico di moderna concezione VoIP permette allo 095 28 58 -numero breve con cui la società stessa si identifica e attraverso il quale è possibile contattare rapidamente la centrale– di gestire contemporaneamente fino a trenta comunicazioni.\n"
    "Il perimetro della sala operativa è stato realizzato in acciaio e manganese, con vetri del tipo blindato e l’accesso al suo interno è gestito attraverso un sistema che combina la tecnologia biometrica e l’innovativo PassCall. Tale sistema consente di identificare in maniera univoca e certa il richiedente l’autorizzazione all’accesso agli ingressi principali, gestiti per tipologia e fasce orarie attraverso un apposito database. Il perimetro esterno della centrale è inoltre dotato di sofisticate sistema software interfacciato con telecamere che controllano l’area circostante.\n"
    "Le tecnologie impiegate ed i complessi impianti telematici e software si estendono dai tradizionali radio- e video-allarmi per impianti fissi, alla radiolocalizzazione satellitare per mezzi mobili (veicoli privati, flotte commerciali, natanti, container e animali domestici), ai sistemi ISDN per monitoraggio, controllo e gestione remota d’impianti, accessi e telecontrolli. ";
    
    
    
    desc1 = @"Radio vigilanza \n"
    
    "Tramite il software in dotazione, la centrale è nelle condizioni di svolgere il servizio di radio vigilanza che consente, grazie all’ausilio di trasmettitori radio, di collegare impianti di allarme di qualunque genere ed in qualunque sito alla centrale operativa, consentendo a quest’ultima non soltanto di svolgere un’attività di controllo, ma di verificare, nel contempo, lo stato delle apparecchiature remote collegate 24 ore su 24.Tale servizio permette alla società che ne fa uso di ridurre drasticamente i costi, in quanto il sistema è in grado di sostituire in maniera più efficiente la GPG, sia in termini di qualità che quantità. \n"
    "Il servizio rende possibile l’attivazione e la disattivazione a distanza di impianti, di verificarne lo stato, la presenza o meno di energia elettrica, il funzionamento o meno della batteria del sistema e l’efficienza del collegamento tra utente e centrale Il sistema consente altresì di gestire sistemi antintrusione, antincendio, antirapina tecnologici, sabotaggi e manomissioni degli impianti e sistemi vari. La struttura del sistema inizialmente composta da sistemi analogici, è stata gradualmente ampliata e rinnovata con i più moderni ed efficienti sistemi digitali. Il sistema ha acquisito dunque nel tempo un elevato grado di affidabilità e sicurezza che ne hanno aumentato il valore, considerato anche il suo notevole potenziale di crescita.";
    
    
    desc2 = @"Video vigilanza \n"
    
    "Il servizio di Video Vigilanza consiste nella visualizzazione in tempo reale di immagini di luoghi remoti, per verificare la presenza o meno di soggetti non autorizzate all’interno del perimetro monitorato, raggiungendo una maggiore efficienza se collegato ad un sistema di radio vigilanza. \n"
    "Il sistema è collegato alla centrale operativa che gestisce telecamere e brandeggiabili dotate tele zoom, che le cosiddette speed-dome, in grado di ruotare a 360°. \n"
    "Per quei siti in cui non esiste un collegamento filare ad alta velocità, sono a disposizione dei sistemi che sfruttano la tecnologia GSM, fino ai moderni sistemi wireless, in grado di raggiungere la velocità di trasmissione di 54 Mbit. \n"
    "Attualmente sono in già in uso sistemi di video-controllo che utilizzano la tecnologia UMTS. Sono allo studio dei software che permettono di comprimere ed analizzare sempre più le immagini in modo da renderle sempre più fluide e ed alta definizione, integrando un sistema di allarme denominato motion detection, una tecnologia di ultima generazione che permette di rilevare intrusioni all’interno di aree controllate da una o più telecamere, segnalate sul monitor dell’operatore per mezzo di un perimetro virtuale evidenziato per contrasto di colore. \n"
    "Il mercato della sicurezza sta vivendo un momento di grande fervore, considerato che molti siti -quali aeroporti, porti, caserme, edifici di grande fruizione pubblica- la cui sicurezza era negli anni scorsi di esclusiva competenza della Forze dell’Ordine, sono oggi affidati anche alla vigilanza privata. In tali contesti, il servizio di video vigilanza appare tra i più sicuri. \n"
    "In considerazione di ciò, si configura un potenziale in continua ascesa nel settore della video vigilanza, crescita non più sollecitata soltanto da una scelta, ma anche da un obbligo normativo (decreti sulla sicurezza, PON sicurezza), che rendono necessario l’uso di sistemi integrati costituiti da elementi ad alta tecnologia e uomini altamente competenti. Tanto è vero che questa esigenza, della quale recentemente è stata investita la comunità europea per lo studio di direttive e legislazione speciale, avrà come principale conseguenza lo stanziamento di fondi specifici per la messa in sicurezza dei centri storici delle grandi aree metropolitane, nel cui contesto Catania è inserita. In particolare si fa riferimento alle cosiddette ZTL (Zone a Traffico Limitato), la cui regolamentazione prevede espressamente il ricorso a sistemi di Video vigilanza.";

    
    desc3 = @"Radio localizzazione satellitare \n"
    
    "La radiolocalizzazione satellitare negli anni è stata ottimizzata grazie all’evoluzione dei sistemi telefonici passando dalla vecchia tipologia analogica ETACS alla moderna tipologia digitale GPRS. \n"
    "Il sistema è formato da un’apparecchiatura miniaturizzata dotata di un modem telefonico integrato e di un ricevitore GPS che permette di inviare alla centrale operativa una moltitudine di informazioni, relative al mezzo su cui l’apparecchiatura è installata: le coordinate geografiche del mezzo, la velocità, la direzione di movimento. \n"
    "La Radio localizzazione satellitare consente di visualizzare in tempo reale su mappe computerizzate la posizione dei veicoli dotati del sistema con un margine di errore inferiore ai 10 metri. Dette mappe sono sempre costantemente aggiornate mediante l’acquisto di update su CD, sia da un punto di vista stradale che geo-politico.\n"
    "La centrale è dotata di numerose apparecchiature quali –come già evidenziato- modem telefonici, che sfruttano la normale linea analogica fino ad arrivare ai moderni modem digitali che sfruttano i flussi telefonici di minimo 30 linee, che rendono la velocità di trasmissione e ricezione elevatissima con l’introduzione del protocollo V110.\n";
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
