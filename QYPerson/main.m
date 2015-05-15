//
//  main.m
//  QYPerson
//
//  Created by qingyun on 15-1-13.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 声明一个全新的类，名字叫QYPerson
 * QYPerson有三个特征，也就是成员变量，_name,indentify_age
 * 还有三个方法
 */
@interface QYPerson : NSObject
{
    NSString *_name;
    NSString *_indentify;

    int _age;
}

// 该方法用来给QYPerson的对象名字和身份证
- (QYPerson *)initWithName:(NSString *)name andIndentify:(NSString *) indentify;

// 设置QYPerson的对象的年纪
- (void)setAge:(int)age;

// 获取QYPerson的对象的年纪
- (int)age;
@end

/*
 * 实现QYPerson类
 * 记得要把所有声明过的方法都实现以下，以避免错误提示
 */
@implementation QYPerson

- (QYPerson *)initWithName:(NSString *)name andIndentify:(NSString *)indentify
{
    _name = name;
    _indentify = indentify;
    return self;
}

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}
@end


int main(int argc, const char * argv[])
{
    NSLog(@"Hello QYPerson：");
    
    QYPerson *zhangQinPei = [QYPerson new];
    
    zhangQinPei = [zhangQinPei initWithName:@"peipei" andIndentify:@"410324198xxxxxxxx"];
    [zhangQinPei setAge:30];
    
    int ageOfPeiPei;
    ageOfPeiPei = [zhangQinPei age];
    
    NSLog(@"新的一个青云人zhangqinpei的年纪：%d", ageOfPeiPei);
    
    return 0;
}

