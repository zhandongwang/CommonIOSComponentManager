//
//  FRWHttpError.m
//  FRWHttpEngine
//
//  Created by CaydenK on 16/9/8.
//  Copyright © 2016年 火小二. All rights reserved.
//

#import "FRWHttpError.h"

NSString * const FRWHttpErrorDomain = @"FRWHttpErrorDomain";


@implementation NSError (FRWHttp)

/**
 *  根据错误码生成Error
 *
 *  @param code 错误码
 *  @param dict 错误详情
 *
 *  @return 错误信息
 */
+ (instancetype)frw_httpErrorCode:(NSInteger)code userInfo:(NSDictionary *)dict {
    return [NSError errorWithDomain:FRWHttpErrorDomain code:code userInfo:dict];
}

@end
