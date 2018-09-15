//
//  iMovieCollectionViewItem.h
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iMovieCollectionViewItem : UICollectionViewCell

+ (NSString*)reuseIdentifier;
+ (UINib *)nib;
- (void)setContent:(NSString*)imagepath;
@end
