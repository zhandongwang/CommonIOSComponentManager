//
//  FRWHttpError.h
//  FRWHttpEngine
//
//  Created by CaydenK on 16/9/8.
//  Copyright © 2016年 火小二. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  业务错误域
 */
extern NSString * const FRWHttpErrorDomain;

/*!
 @enum 逻辑请求状态码
 @abstract 在FRWHttpError Domain下的错误码
 */
typedef NS_ENUM(NSInteger, FRWHttpError) {
    /**
     *  连接失败
     */
    FRWHttpErrorLostConnect = -1,
    /**
     *  默认错误
     */
    FRWHttpErrorDefault = 0,
    /**
     *  已注销
     */
    FRWHttpErrorLogout = 403,
};

/**
 *  网络请求逻辑错误Category
 */
@interface NSError (FRWHttp)

/**
 *  根据错误码生成Error
 *
 *  @param code 错误码
 *  @param dict 错误详情
 *
 *  @return 错误信息
 */
+ (instancetype)frw_httpErrorCode:(NSInteger)code userInfo:(NSDictionary *)dict;

@end
