//
//  Person.h
//  OC-内存管理（单例模式）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
//单例模式 一般只需要自定义一个类方法创建对象，不用去调用new,alloc init
//格式:sharedXXXX  instanceXXXX
+(Person *)sharedPerson;
@end
