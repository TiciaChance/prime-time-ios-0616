//
//  FISTableViewController.m
//  PrimeTime
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.tableView.accessibilityIdentifier =@"table";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}

//-(NSInteger)primeNumber:(NSInteger)prime {
//    // generates the prime(th) number
//    //if i pass in 5 i would receive 11 in return bc 11 is the 5th prime
//    
//    // set the first prime numbers
//    if(prime == 1) {
//        return 2;
//    }
//    if (prime == 2) {
//        return 3;
//    }
//    return 0;
//        
//    //BOOL isPrime = 1;
//    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
//    
//    for (NSUInteger i = 3; i<= prime; i+=2) {         //Start at 3 and add 2 (avoid 1 and 2 as well as even numbers)
//          BOOL isPrime = YES;                           //Assume that i is prime
//
//        for (NSUInteger secondNumber = 2; secondNumber < sqrt(i); secondNumber++){      //Divide by every number up to sqrt - bc if a number w/in the sq rt isn't a prime, the initial number is not a prime
//        
//            if (i % secondNumber == 0){             //If evenly divisible by secondNumber, not a prime
//                NSLog(@"coming true");
//                isPrime = NO;
//                break;                  //Don't need to check any more factors, so break
//            }
//            if (isPrime) {                //If isPrime was never set to NO, it is prime
//            [numberArray addObject:@(i)]; //if Prime then add to empty array as an nsNumber
//        }
//    }
//}
//    NSInteger number = [numberArray[prime]integerValue];
//    return number;
//}
//



/*- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];

//    Now create a UITableView and make each cell's contents equal to that row numbers prime number. So row number 5 should have 11 in it and row number 386 should have 2663. basically what is the nth prime #, of all the prime numbers
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", [self primeNumber:indexPath.row + 1]];

 //Configure the cell...

   return cell;
}
*/



@end
