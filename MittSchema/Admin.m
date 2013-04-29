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
    return [self initWithUserName:@""
                         password:@""];
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

-(BOOL)messageToStudent:(Student *)student message:(NSString *)message
{
    NSLog(@"The message has now been sent to student %@ %@.", student.firstName, student.lastName);
    [student messageFromAdmin:message];
    return YES;
}


//-(BOOL)messageToAllStudents:(NSDictionary *)students message:(NSString *)message
//{
//    for(Student *student in [students allKeys]){
//        [student messageFromAdmin:message];
//    }
//
//    return YES;
//}


@end
