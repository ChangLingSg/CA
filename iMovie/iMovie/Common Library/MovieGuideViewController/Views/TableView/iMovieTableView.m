//
//  iMovieTableView.m
//  iMovie
//
//  Created by Changling on 2018/8/24.
//  Copyright © 2018 Changling. All rights reserved.
//

#import "iMovieTableView.h"
#import "iMovieTableViewCell.h"

@interface iMovieTableView()

@end

@implementation iMovieTableView

-(void)setUpTableView{
    [self registerNib:[iMovieTableViewCell nib] forCellReuseIdentifier:[iMovieTableViewCell reuseIdentifier]];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setUpTableView];
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        [self setUpTableView];
    }
    return self;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    iMovieTableViewCell *cell = [self dequeueReusableCellWithIdentifier:[iMovieTableViewCell reuseIdentifier] forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
