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

- (NSString *)requestPath;
- (NSDictionary *)params;
- (void)asyncRequestSuccess:(void(^)(id data))success failure:(void(^)(NSError *error))failure;

@end



#endif /* ZDWComponentProtocol_h */
