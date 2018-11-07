//
//  Student.m
//  Runtime
//
//  Created by humengfan on 2018/3/21.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

#import "Student.h"

#import <objc/message.h>
@implementation Student





- (instancetype)initWithCoder:(NSCoder *)aDecoder{ // NS_DESIGNATED_INITIALIZER
    if (self = [super init]) {
        
    }
    return self;
    
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    
    
    [aCoder encodeObject:self.name forKey:@"NAME"];
    unsigned int count = 0;
    
    Ivar * ivars  = class_copyIvarList([Student class], &count);
    
    for (int i = 0 ; i<count; i++) {
        
        Ivar ivar = ivars[i];
        const char* name = ivar_getName(ivar);
        NSString*key = [NSString stringWithUTF8String:name];
        [aCoder encodeObject:key forKey:key];
        
    }
}





@end
