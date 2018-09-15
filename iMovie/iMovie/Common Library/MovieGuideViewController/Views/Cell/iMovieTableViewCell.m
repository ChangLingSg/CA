//
//  iMovieTableViewCell.m
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "iMovieTableViewCell.h"

//#import "iMovieItemCollectionView.h"
#import "iMovieCollectionViewItem.h"

@interface iMovieTableViewCell()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *movierailCollectionView;
@end

@implementation iMovieTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self setupCollectionView];
}

- (void)setupCollectionView{
    self.movierailCollectionView.delegate = self;
    self.movierailCollectionView.dataSource = self;
    [self.movierailCollectionView registerNib:[iMovieCollectionViewItem nib] forCellWithReuseIdentifier:[iMovieCollectionViewItem reuseIdentifier]];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;//self.movieItems? self.movieItems.count : 0;
}

- ( UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    iMovieCollectionViewItem *item = [self.movierailCollectionView dequeueReusableCellWithReuseIdentifier:[iMovieCollectionViewItem reuseIdentifier] forIndexPath:indexPath];
    return item;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

+ (NSString*)reuseIdentifier{
    return NSStringFromClass([iMovieTableViewCell class]);
}

+ (UINib *)nib{
    return [UINib nibWithNibName:NSStringFromClass([iMovieTableViewCell class]) bundle:[NSBundle bundleForClass:[iMovieTableViewCell class]]];
}

@end
