//
//  Person.m
//  IOSProject
//
//  Created by 钟辉 on 2022/5/5.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if(self != nil){
        self.name = _name;
        self.age = _age;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name andAge:(int)age{
    self = [super init];
    if(self != nil){
        self.name = name;
        self.age = age;
    }
    return self;
}
- (void)eat
{
    NSLog(@"该属性具有吃的功能");
}

- (NSString *)printName
{
    NSLog(@"我的名字叫:%@,我的年龄是:%d",_name,_age);
    return @"打印成功！";
}
@end
