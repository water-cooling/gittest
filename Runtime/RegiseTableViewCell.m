//
//  RegiseTableViewCell.m
//  Runtime
//
//  Created by humengfan on 2018/6/12.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import "RegiseTableViewCell.h"

@implementation RegiseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (IBAction)AddHeight:(UIButton *)sender {
    
    CGRect frame = self.frame;
    frame.size.height +=50;
    
    self.frame = frame;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
