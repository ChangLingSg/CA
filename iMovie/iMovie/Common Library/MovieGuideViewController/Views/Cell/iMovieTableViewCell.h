//
//  iMovieTableViewCell.h
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iMovieTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;
+ (UINib *)nib;

@end
