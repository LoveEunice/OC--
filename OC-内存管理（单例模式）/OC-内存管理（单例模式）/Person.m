//
//  Person.m
//  OC-内存管理（单例模式）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
static Person *myPerson=nil;
@implementation Person
-(void)setName:(NSString *)name
{
    if (_name!=name)
    {
        [_name release];
        _name=[name retain];
    }
}
+(Person *)sharedPerson
{
    if (!myPerson)
    {
        //第一次进来，则初始化
        myPerson=[[Person alloc] init];
    }
    return myPerson;
}
//需要重写alloc方法
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (!myPerson)
    {
        // 初始化
        myPerson=[super allocWithZone:zone];//zone指的是内存块,必须用super调用，否则死循环
    }
    return myPerson;
}
-(NSString *)description
{
    return _name;
}
//-(void)dealloc
//{
//    NSLog(@"%@被释放了...",myPerson);
////    [myPerson release];  单例模式的对象 不用去释放内存！不用release/autorelease
//    [super dealloc];
//}
@end
