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

//@class Admin;
//@class Student;
//@class Course;

@interface StudentService : NSObject

-(id)initWithStudents:(NSArray *) students;

-(BOOL)addStudent:(Student *)student;

//-(Student *) removeStudent:(Student *)student withId:(NSString *) studentId;
//-(Student *) updateStudentWithId:(NSString *) studentId;

//-(BOOL)updateScheme:(Scheme *)scheme;

// Skriver en tom kommentar... skriver lite till... skrev ännu lite mer

@end
