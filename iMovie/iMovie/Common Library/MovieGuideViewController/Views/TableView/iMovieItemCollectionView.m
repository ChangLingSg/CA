//
//  iMovieItemCollectionView.m
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "iMovieItemCollectionView.h"
#import "iMovieCollectionViewItem.h"

@interface iMovieItemCollectionView()
@property (nonatomic, strong) NSArray *movieItems;
@end

@implementation iMovieItemCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self){
        [self setupCollectionView];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setupCollectionView];
}

-(void)setupCollectionView{
    [self registerNib:[iMovieCollectionViewItem nib] forCellWithReuseIdentifier:[iMovieCollectionViewItem reuseIdentifier]];
}

- (void)setContent:(NSArray*)items{
    if (items&&items.count>0){
        self.movieItems = items;
        [self reloadData];
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.movieItems? self.movieItems.count : 0;
}

- ( UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    iMovieCollectionViewItem *item = [self dequeueReusableCellWithReuseIdentifier:[iMovieCollectionViewItem reuseIdentifier] forIndexPath:indexPath];
    return item;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
