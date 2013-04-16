//
//  Student.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)init
{
    return [self initWithLastName:@"" firstName:@"" course:@""];
}

-(id)initWithLastName:(NSString *) lastName
            firstName:(NSString *) firstName
               course:(NSString *) course
{
    self = [super init];
    
    if (self) {
        self.lastName = lastName;
        self.firstName = firstName;
        self.course = course;
        self->_studentId = [[NSUUID UUID] UUIDString];
    }
    return self;
}

-(NSUInteger)hash
{
    return 37 * [self.studentId hash];
}

-(BOOL)logStudent
{
    NSLog(@"Student %@ %@ ID:[%@]", self.firstName, self.lastName, self.studentId);
    return YES;
}


-(BOOL)dayAssignment
{
    NSLog(@"You have a new %@-assignment.", self.course);
    return YES;
}

-(void)messageFromAdmin:(NSString *)message
{
    NSString *adminMessage = message;
    NSLog(@"%@ du har ett nytt meddelande: %@", self.firstName, adminMessage);
}


@end
