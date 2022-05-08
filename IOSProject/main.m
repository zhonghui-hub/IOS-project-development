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
        NSString *Str1=@"Hello String!";
        [Str1 writeToFile:@"aaa" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSString *Str2=[NSString stringWithContentsOfFile:@"aaa" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",Str2);

        NSData * data1 = [NSData dataWithContentsOfFile:@"/Users/zhonghui/Pictures/龙猫.jpeg"];
        NSFileManager *fileManager=[NSFileManager defaultManager];
        NSString * pathPicture = @"cat.jpeg";
        [fileManager createFileAtPath:pathPicture contents:data1 attributes:nil];
        if([fileManager fileExistsAtPath:pathPicture]){
            NSLog(@"文件存在");
        }else{
            NSLog(@"文件不存在");
        }
        NSData * content = [NSData dataWithContentsOfFile:@"cat.jpeg"];
        NSLog(@"%lu",[content length]);
        unsigned char * ch = [content bytes];
        NSLog(@"%x,%x",ch[0],ch[1]);
        
    }
    return 0;
}
