//
//  ZDWComponentProtocol.h
//  Pods
//
//  Created by 凤梨 on 16/11/23.
//
//

#ifndef ZDWComponentProtocol_h
#define ZDWComponentProtocol_h

/**
 *  网络请求协议
 */
@protocol ZDWNetworking <NSObject>

- (void)setRequestType:(NSString *)type;
- (void)setRequestPath:(NSString *)path;
- (void)setRequestParams:(NSDictionary *)params;
- (void)setRequestSuccessBlock:(void(^)(id data))success;
- (void)setRequestFailureBlock:(void(^)(NSError *error))failure;
- (void)sendRequest;

@end



#endif /* ZDWComponentProtocol_h */
