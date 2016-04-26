//
//  TableViewController.m
//  CreateTableView
//
//  Created by Tin Blanc on 4/26/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController
{
    NSArray* arrayFruits ;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"Create TableView";
    
    arrayFruits = @[@"Apple", @"Banana", @"Water Melon"];
}

- ( NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


-( NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayFruits count];
}


// Làm việc với dữ liệu người dùng trên TableView
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    UIImage* images = [UIImage imageNamed:arrayFruits[indexPath.row]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrayFruits[indexPath.row]];
    cell.imageView.image = images;
    
    return cell;
}


// Nhận thao tác người dùng
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ - %d", arrayFruits[indexPath.row], (int) indexPath.row);
}

@end
