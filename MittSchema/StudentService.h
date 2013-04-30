//
//  StudentService.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "course.h"
#import "Scheme.h"
#import "Admin.h"

typedef void (^GetStudentResponce)(NSArray *getStudent);



@interface StudentService : NSObject

-(id)initWithStudents:(NSArray *)studentsToAdd;

-(BOOL)addStudent:(Student *)student;

-(id)serializeStudentToJson:(id) object;

-(void) saveStudent:(Student *)student;

-(void) getStudentWithID:(NSString*)_id onCompletion:(GetStudentResponce) getStudentResponce;


@end
