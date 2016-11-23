//
//  ZDWComponentProtocol.h
//  Pods
//
//  Created by 王战东 on 16/11/23.
//
//

#import <Foundation/Foundation.h>

@protocol ZDWNetworking <NSObject>

@end


@interface ZDWComponentProtocol : NSObject

- (void)registerClass:(Class)class forProtocol:(Protocol *)protocol ;
- (Class)classForProtocol:(Protocol *)protocol;

@end
