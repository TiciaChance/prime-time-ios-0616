//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Flatiron School on 6/29/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityIdentifier =@"table";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

-(NSUInteger)primeNumber:(NSUInteger)prime {
    // generates the prime(th) number
    //if i pass in 5 i would receive 11 in return bc 11 is the 5th prime
    
    // set the first prime numbers
    //    if(prime == 1) {
    //        return 2;
    //    }
    //    if (prime == 2) {
    //        return 3;
    //    }
    //
    //    BOOL isPrime = 1;
    
    
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    NSInteger firstNumber = 0;
    
    
    
    
    while (numberArray.count < prime + 1) {
        
        firstNumber += 1;
        
        BOOL isPrime = 1;
        
        for(NSUInteger i = 2; i < firstNumber; i++) {
            
            if (firstNumber % i == 0) {
                isPrime = 0;
            }
        
        }
        if(isPrime){
            [numberArray addObject:@(firstNumber)];
        }
    }
    NSInteger number = [numberArray[prime]integerValue];
    
    NSLog(@"\n\n\n\n\n%li\n\n\n\n\n", number);
    return number;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    //    Now create a UITableView and make each cell's contents equal to that row numbers prime number. So row number 5 should have 11 in it and row number 386 should have 2663. basically what is the nth prime #, of all the prime numbers
    
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", [self primeNumber:indexPath.row + 1]];
    
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
