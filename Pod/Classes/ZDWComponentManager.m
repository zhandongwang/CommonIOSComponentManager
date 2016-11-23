//
//  ZDWComponentManager.m
//  Pods
//
//  Created by 凤梨 on 16/11/23.
//
//

#import "ZDWComponentManager.h"

@interface ZDWComponentManager ()

@property (nonatomic, strong) NSMutableDictionary *protocols;

@end

@implementation ZDWComponentManager

+ (instancetype)instance {
    static ZDWComponentManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void)registerClass:(Class)class forProtocol:(Protocol *)protocol {
    if (!class || !protocol) {
        return;
    }
    NSString *className = NSStringFromClass(class);
    NSString *protocolName = NSProtocolFromString(protocol);
    
    if (!self.protocols[protocolName]) {
        self.protocols[protocolName] = className;
    }
}

- (Class)classForProtocol:(Protocol *)protocol; {
    if (!protocol) {
        return nil;
    }
    if (self.protocols[NSStringFromProtocol(protocol)]) {
        NSString *className = self.protocols[NSStringFromProtocol(protocol)];
        return NSClassFromString(className);
    }
    return nil;
}

- (NSMutableDictionary *)protocols {
    if (!_protocols) {
        _protocols = [[NSMutableDictionary alloc] initWithCapacity:5];
    }
    return _protocols ;
}

@end
