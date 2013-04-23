//
//  Student.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *course;
@property (nonatomic, copy, readonly) NSString *id;
@property (nonatomic, copy) NSString *rev;

-(id)initWithLastName:(NSString *) lastName
            firstName:(NSString *) firstName
               course:(NSString *) course;

-(BOOL)logStudent;

-(BOOL)dayAssignment;

-(BOOL)messageFromAdmin:(NSString *)message;

#pragma mark - Student from Json
+(id) studentFromJson:(NSDictionary*) studentAsJson;


@end
