//
//  Person.h
//  IOSProject
//
//  Created by 钟辉 on 2022/5/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic,assign)int age;
@property(nonatomic,retain)NSString *name;

-(void)eat;
-(NSString *)printName;
-(instancetype)init;
-(instancetype)initWithName:(NSString *)name andAge:(int)age;
@end

NS_ASSUME_NONNULL_END
