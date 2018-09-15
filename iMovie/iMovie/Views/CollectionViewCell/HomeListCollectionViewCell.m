//
//  HomeListCollectionViewCell.m
//  iTravel
//
//  Created by Changling on 2018/8/7.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "HomeListCollectionViewCell.h"

@implementation HomeListCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setContent:(SpotModel*) model{
    self.title.text = model.spotName;
    self.location.text = model.location;
    self.coverImage.image = [UIImage imageNamed:model.imagePath];
}

+(NSString *)reuseIdentifer{
    return NSStringFromClass([self class]);
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([HomeListCollectionViewCell class])
                          bundle:[NSBundle bundleForClass:[HomeListCollectionViewCell class]]];
}

@end
