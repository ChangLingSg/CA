//
//  iMovieViewController.m
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "iMovieViewController.h"
#import "iMovieTableView.h"
@interface iMovieViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic)  iMovieTableView *movieTableView;

@end

@implementation iMovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.movieTableView = [[iMovieTableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.movieTableView.delegate = self;
    self.movieTableView.dataSource = self;
    [self.view addSubview:self.movieTableView];
    [self.movieTableView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
