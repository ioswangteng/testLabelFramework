//
//  TestString.m
//  testLabelFramework
//
//  Created by 王腾 on 2017/12/4.
//  Copyright © 2017年 王腾. All rights reserved.
//

#import "TestString.h"

@implementation TestString
+(NSMutableArray *)splitString:(NSString *)String{
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"[],"];
    NSArray*datas = [String componentsSeparatedByCharactersInSet: doNotWant];
    NSMutableArray* markArr=[[NSMutableArray alloc]init];
    for (int i=0 ;i<datas.count;i++) {
        NSString * objstr=[datas objectAtIndex:i];
        if (![objstr isEqualToString:@""]) {
            [markArr addObject:objstr];
        }
    }
    return  markArr;
}
@end
