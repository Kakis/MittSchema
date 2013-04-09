//
//  StudentService.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@class Student;

@interface StudentService : NSObject

-(id)initWithStudents:(NSArray *) students;

-(BOOL)addStudent:(Student *)student;
-(Student *) removeStudentWithId:(NSString *) studentId;
-(Student *) updateStudentWithId:(NSString *) studentId;


@end
