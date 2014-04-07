//
//  PreferenceInfo.m
//  iTerm
//
//  Created by George Nachman on 4/6/14.
//
//

#import "PreferenceInfo.h"

@implementation PreferenceInfo

+ (instancetype)infoForPreferenceWithKey:(NSString *)key
                                    type:(PreferenceInfoType)type
                                 control:(NSControl *)control {
    PreferenceInfo *info = [[self alloc] init];
    info.key = key;
    info.type = type;
    info.control = control;
    return info;
}

- (id)init {
    self = [super init];
    if (self) {
        _range = NSMakeRange(0, INT_MAX);
    }
    return self;
}

- (void)dealloc {
    [_key release];
    [_control release];
    [_shouldBeEnabled release];
    [super dealloc];
}

@end
