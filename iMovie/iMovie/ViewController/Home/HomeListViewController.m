//
//  HomeListViewController.m
//  iTravel
//
//  Created by Changling on 2018/8/6.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "HomeListViewController.h"
#import "SpotModel.h"
#import "HomeListCollectionViewCell.h"
#import "HomeListSupplementView.h"
#import "HeaderBannerView.h"

@interface HomeListViewController ()

#define SECTION_HEADER_HEIGHT 30
#define SECTION_HEADER_HEIGHT_BANNER 200
@property (nonatomic, strong) NSMutableArray *homeList;
@property (nonatomic,strong) HeaderBannerView *bannerView;

@end

@implementation HomeListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initDummyData];
    
   // [self setUpCollectionView];
}

-(void)initDummyData{
    
    _homeList = [[NSMutableArray alloc] init];
    
    SpotModel *model1 = [[SpotModel alloc] init];
    model1.spotName = @"ShenTaoSha";
    model1.location = @"Serangoon Northe Ave4";
    model1.imagePath = @"image001";
    [_homeList addObject:model1];
    
    SpotModel *model2 = [[SpotModel alloc] init];
    model2.spotName = @"ShenTaoSha";
    model2.location = @"Serangoon Northe Ave4";
    model2.imagePath = @"image001";
    [_homeList addObject:model2];
    
    SpotModel *model3 = [[SpotModel alloc] init];
    model3.spotName = @"ShenTaoSha";
    model3.location = @"Serangoon Northe Ave4";
    model3.imagePath = @"image001";
    [_homeList addObject:model3];
    
    SpotModel *model4 = [[SpotModel alloc] init];
    model4.spotName = @"ShenTaoSha";
    model4.location = @"Serangoon Northe Ave4";
    model4.imagePath = @"image001";
    [_homeList addObject:model4];
    
    SpotModel *model5 = [[SpotModel alloc] init];
    model5.spotName = @"ShenTaoSha";
    model5.location = @"Serangoon Northe Ave4";
    model5.imagePath = @"image001";
    [_homeList addObject:model5];
    
    SpotModel *model6 = [[SpotModel alloc] init];
    model6.spotName = @"ShenTaoSha";
    model6.location = @"Serangoon Northe Ave4";
    model6.imagePath = @"image001";
    [_homeList addObject:model6];
    
    SpotModel *model7 = [[SpotModel alloc] init];
    model7.spotName = @"ShenTaoSha";
    model7.location = @"Serangoon Northe Ave4";
    model7.imagePath = @"image001";
    [_homeList addObject:model7];
    
    SpotModel *model8 = [[SpotModel alloc] init];
    model8.spotName = @"ShenTaoSha";
    model8.location = @"Serangoon Northe Ave4";
    model8.imagePath = @"image001";
    [_homeList addObject:model8];
   
    SpotModel *model9 = [[SpotModel alloc] init];
    model9.spotName = @"ShenTaoSha";
    model9.location = @"Serangoon Northe Ave4";
    model9.imagePath = @"image001";
    [_homeList addObject:model9];
    
    SpotModel *model10 = [[SpotModel alloc] init];
    model10.spotName = @"ShenTaoSha";
    model10.location = @"Serangoon Northe Ave4";
    model10.imagePath = @"image001";
    [_homeList addObject:model10];
    
    SpotModel *model11 = [[SpotModel alloc] init];
    model11.spotName = @"ShenTaoSha";
    model11.location = @"Serangoon Northe Ave4";
    model11.imagePath = @"image001";
    [_homeList addObject:model11];
    
    SpotModel *model12 = [[SpotModel alloc] init];
    model12.spotName = @"ShenTaoSha";
    model12.location = @"Serangoon Northe Ave4";
    model12.imagePath = @"image001";
    [_homeList addObject:model12];
    
    SpotModel *model13 = [[SpotModel alloc] init];
    model13.spotName = @"ShenTaoSha";
    model13.location = @"Serangoon Northe Ave4";
    model13.imagePath = @"image001";
    [_homeList addObject:model13];
    
    SpotModel *model14 = [[SpotModel alloc] init];
    model14.spotName = @"ShenTaoSha";
    model14.location = @"Serangoon Northe Ave4";
    model14.imagePath = @"image001";
    [_homeList addObject:model14];
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
