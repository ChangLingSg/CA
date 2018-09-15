//
//  iMovieCollectionViewItem.m
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "iMovieCollectionViewItem.h"

@interface iMovieCollectionViewItem()
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@end

@implementation iMovieCollectionViewItem

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setContent:(NSString*)imagepath{
    self.movieImage.image = [UIImage imageNamed:imagepath];
}

+ (NSString*)reuseIdentifier{
    return NSStringFromClass([iMovieCollectionViewItem class]);
}

+ (UINib *)nib{
    return [UINib nibWithNibName:NSStringFromClass([iMovieCollectionViewItem class]) bundle:[NSBundle bundleForClass:[iMovieCollectionViewItem class]]];
}

@end
