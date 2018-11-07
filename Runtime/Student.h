//
//  Student.h
//  Runtime
//
//  Created by humengfan on 2018/3/21.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject<NSCoding>

@property(nonatomic,strong)NSString*name;
@property(nonatomic,strong)NSString*ClassID;
@property(nonatomic,assign)int cardiD;
@property(nonatomic,strong)NSString*uu;
@property(nonatomic,strong)NSString*yy;


-(void)EncodeStudent:(NSCoder *)code;

@end
