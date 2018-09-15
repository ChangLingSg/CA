//
//  HomeListCollectionViewCell.h
//  iTravel
//
//  Created by Changling on 2018/8/7.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpotModel.h"

@interface HomeListCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *coverImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *location;

+(NSString *)reuseIdentifer;
+ (UINib *)nib;
-(void)setContent:(SpotModel*) model;

@end
