//
//  ZDWComponentManager.h
//  Pods
//
//  Created by 凤梨 on 16/11/23.
//
//

#import <Foundation/Foundation.h>

@interface ZDWComponentManager : NSObject

- (void)registerClass:(Class)class forProtocol:(Protocol *)protocol ;
- (Class)classForProtocol:(Protocol *)protocol;

@end
