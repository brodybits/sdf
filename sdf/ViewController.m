//
//  ViewController.m
//  sdf
//
//  Created by C. Brody on 10/18/15.
//  Copyright (c) 2015 C. Brody. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //http://stackoverflow.com/a/7153683/1283667
    // http://stackoverflow.com/a/11451564/1283667
    UITableView *tv = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    self.dataSource = [[MyDataSource alloc] init];
    tv.dataSource = self.dataSource;
    [self.view addSubview: tv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
