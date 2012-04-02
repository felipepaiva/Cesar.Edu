//
//  PratosQuentesViewController.m
//  Receitas
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "PratosQuentesViewController.h"
#import "PratosQuentesTableCellController.h"
#import "DetalhePratoViewController.h"
#import "Prato.h"

@interface PratosQuentesViewController ()

@end

@implementation PratosQuentesViewController
@synthesize pratosQuentes = _pratosQuentes;

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

    Prato *prato1 = [[Prato alloc] init];
    prato1.nome = @"File a parmegiana";
    prato1.descricao = @"Delicioso file a parmegiana de frango";
    prato1.preco = @"R$19,90";
    
    Prato *prato2 = [[Prato alloc] init];
    prato2.nome = @"Camarão aos 4 queijos";
    prato2.descricao = @"Deliciosoooooo";
    prato2.preco = @"R$23,90";
    
    _pratosQuentes = [[NSMutableArray alloc] initWithObjects:prato1,prato2, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_pratosQuentes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cellPratoQuente";
    PratosQuentesTableCellController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    /*
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    */
    
    Prato *prato = [_pratosQuentes objectAtIndex:[indexPath row]];
    
    cell.lblNome.text = prato.nome;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    Prato *prato = [self.pratosQuentes objectAtIndex:indexPath.row];
    
    /*
     DetalhePratoViewController *detalhe = [self.storyboard instantiateViewControllerWithIdentifier:@"detalheView"];
    
    detalhe.prato = prato;
    
    //[self performSegueWithIdentifier:@"detalheView" sender:self];
    [self presentViewController:detalhe animated:YES completion:nil];
     */
    
    DetalhePratoViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detalheView"];
    detail.prato = prato;
    
    [self.navigationController pushViewController:detail animated:YES];
}

@end
