//
//  Student.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Student.h"

@implementation Student

+(id) studentFromJson:(NSDictionary *)studentAsJson
{
    Student *student = [[self alloc] init];
    
    student.lastName = studentAsJson[@"lastName"];
    student.firstName = studentAsJson[@"firstName"];
    student.course = studentAsJson[@"course"];
    student->_id = studentAsJson[@"id"];
    student->_rev = studentAsJson[@"rev"];
    
    return student;
}

-(id)init
{
    return [self initWithLastName:@""
                        firstName:@""
                           course:@""];
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
        self->_id = [[NSUUID UUID] UUIDString];
        self->_rev = [[NSUUID UUID] UUIDString];
    }
    return self;
}


-(NSUInteger)hash
{
    return 37 * [self.id hash];
}


-(BOOL)isEqual:(id)other
{
    // if other points to self - we are equal
    if(other == self){
        return YES;
    }
    
    // if other is not nil AND is member of same class as we (self)
    if(other && [other isMemberOfClass:[self class]])
    {
        // comapre studentId's
        return [[other id] isEqualToString:self.id];
    }
    // we are not equal
    return NO;
}


-(BOOL)logStudentAttributes
{
    NSLog(@"Student %@ %@ attends the %@-course and has ID:[%@] REV:[%@]", self.firstName, self.lastName, self.course, self.id, self.rev);
    return YES;
}


//-(BOOL)dayAssignment
//{
//    NSLog(@"You have a new %@-assignment.", self.course);
//    return YES;
//}

-(BOOL)messageFromAdmin:(NSString *)message
{
    NSString *adminMessage = message;
    NSLog(@"%@ you have a new message: %@", self.firstName, adminMessage);
    return YES;
}


@end
