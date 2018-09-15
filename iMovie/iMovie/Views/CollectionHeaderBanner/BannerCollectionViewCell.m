//
//  BannerCollectionViewCell.m
//  iTravel
//
//  Created by Changling on 2018/8/20.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "BannerCollectionViewCell.h"

@interface BannerCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *displayImageView;
@end

@implementation BannerCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+ (NSString *)reuseIdentifier{
    return NSStringFromClass([BannerCollectionViewCell class]);
}

+ (UINib *)nib{
    return [UINib nibWithNibName:NSStringFromClass([BannerCollectionViewCell class])
                          bundle:[NSBundle bundleForClass:[BannerCollectionViewCell class]]];
}

-(void)setContent:(NSString *)imagename{
    _displayImageView.image = [UIImage imageNamed:imagename];
}

@end
