//
//  BannerCollectionViewCell.h
//  iTravel
//
//  Created by Changling on 2018/8/20.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BannerCollectionViewCell : UICollectionViewCell
+ (NSString *)reuseIdentifier;
+ (UINib *)nib;
-(void)setContent:(NSString *)imagename;
@end
