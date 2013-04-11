//
//  Admin.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-11.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Admin.h"

@implementation Admin

- (id)init
{
    return [self initWithUserName:@"" password:@""];
}

- (id)initWithUserName:(NSString *)userName
              password:(NSString *)password
{
    self = [super init];
    
    if (self) {
        if(self) {
            self.userName = userName;
            self.password = password;
        }
    }
    return self;
}

@end
