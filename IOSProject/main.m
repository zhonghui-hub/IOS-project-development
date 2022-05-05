//
//  main.m
//  IOSProject
//
//  Created by 钟辉 on 2022/5/5.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *str = @"你好，我的名字！";
        NSLog(@"%@", str);
        Person *per = [Person new];
        [per eat];
        per.name = @"小红";
        per.age = 18;
        [per printName];
        
        Person *per2 = [[Person alloc]initWithName:@"wangming" andAge:20];
        [per2 printName];
    }
    return 0;
}
