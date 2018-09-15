//
//  HeaderBannerView.m
//  iTravel
//
//  Created by Changling on 2018/8/20.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "HeaderBannerView.h"
#import "BannerCollectionViewCell.h"
@interface HeaderBannerView ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UIPageControl *pageControl;

@property (nonatomic, strong) NSMutableArray *itemsArr;

@property (nonatomic, assign) BOOL isRepeat;
@property (nonatomic, assign) BOOL isAutoRun;

@end

@implementation HeaderBannerView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        [self setUpcollectionView];
        [self setUpPageControl];
    }
    return self;
}

- (void)setUpcollectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout  * layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        layout.itemSize = self.bounds.size;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView registerNib:[BannerCollectionViewCell nib] forCellWithReuseIdentifier:[BannerCollectionViewCell reuseIdentifier]];
        _collectionView.pagingEnabled = YES;
        _collectionView.bounces = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        [self addSubview:_collectionView];
    }
    
}

- (void)setUpPageControl{
    if (!_pageControl){
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.bounds.size.height-20, self.bounds.size.width, 10)];
        _pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
        [self addSubview:_pageControl];
    }
}

- (void)setArrContent:(NSArray *)items autoRun:(BOOL)isauto repeat:(BOOL)isrepeat{
    
    _itemsArr = [[NSMutableArray alloc] init];
    _isRepeat = isrepeat;
    _isAutoRun = isauto;
  
    if (_isRepeat == YES){
        _collectionView.bounces = NO;
        _pageControl.numberOfPages = items.count;
        if (items.count == 1){
            [_itemsArr addObjectsFromArray:items];
        }else if(items.count>1){
            [_itemsArr addObject:items.lastObject];
            [_itemsArr addObjectsFromArray:items];
            [_itemsArr addObject:items.firstObject];
            [_collectionView setContentOffset:CGPointMake(self.bounds.size.width, 0)];
        }
    }else{
        if (items.count > 1){
              _pageControl.numberOfPages = items.count;
        }
        [_itemsArr addObjectsFromArray:items];
        _collectionView.bounces = YES;
    }
    [_collectionView reloadData];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _itemsArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    BannerCollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:[BannerCollectionViewCell reuseIdentifier] forIndexPath:indexPath];
    [cell setContent:_itemsArr[indexPath.row]];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return self.bounds.size;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index = [self getIndex:indexPath];
    self.selectItemBlock(index);
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    CGFloat width = self.bounds.size.width;
    if (targetContentOffset->x <= 0.f) {
        self.pageControl.currentPage = _itemsArr.count - 2;
    }else if (targetContentOffset->x >= width*(_itemsArr.count - 1)) {
        self.pageControl.currentPage = 0;
    }else {
        self.pageControl.currentPage = targetContentOffset->x / self.frame.size.width - 1;
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    if (scrollView == _collectionView&_isRepeat==YES){
        CGFloat width = self.bounds.size.width;
        if (scrollView.contentOffset.x <= 0.f) {
            CGPoint point = CGPointMake(width*(_itemsArr.count - 2), 0);
            [scrollView setContentOffset:point animated:NO];
        }else if (scrollView.contentOffset.x >= width*(_itemsArr.count - 1)) {
            CGPoint point = CGPointMake(width, 0);
            [scrollView setContentOffset:point animated:NO];
        }
    }
}

- (NSInteger)getIndex:(NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    if (_isRepeat == YES){
        if (indexPath.row == 0){
            index = _itemsArr.count - 3;
        }else if (indexPath.row ==_itemsArr.count - 1){
            index = 0;
        }else{
            index = indexPath.row - 1;
        }
    }else{
        index = indexPath.row;
    }
    return index;
}

-(void)dealloc{
    NSLog(@"---%@,dealloc---",[HeaderBannerView class]);
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
@end
