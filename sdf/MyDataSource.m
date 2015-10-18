//
//  MyDataSource.m
//  sdf
//
//  Created by C. Brody on 10/18/15.
//  Copyright (c) 2015 C. Brody. All rights reserved.
//

#import "MyDataSource.h"

@implementation MyDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 15;
}

///*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cid = @"Cell";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cid forIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cid];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cid];
    }

    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat: @"section: %ld row %ld", [indexPath section], [indexPath row]];
    
    return cell;
}

@end
