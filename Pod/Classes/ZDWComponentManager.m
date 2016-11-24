//
//  ZDWComponentManager.m
//  Pods
//
//  Created by 凤梨 on 16/11/23.
//
//

#import "ZDWComponentManager.h"

@interface ZDWComponentManager ()

@property (nonatomic, strong) NSMutableDictionary *protocolsDict;

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
    NSString *protocolName = NSStringFromProtocol(protocol);
    
    if ([class conformsToProtocol:protocol] && !self.protocolsDict[protocolName]) {
        self.protocolsDict[protocolName] = className;
    }
}

- (Class)classForProtocol:(NSString *)protocolName {
    if (protocolName.length <= 0) {
        return nil;
    }
    if (self.protocolsDict[protocolName]) {
        NSString *className = self.protocolsDict[protocolName];
        return NSClassFromString(className);
    }
    return nil;
}

- (NSMutableDictionary *)protocolsDict {
    if (!_protocolsDict) {
        _protocolsDict = [[NSMutableDictionary alloc] initWithCapacity:5];
    }
    return _protocolsDict ;
}

@end
