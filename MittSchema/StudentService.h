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


@interface StudentService : NSObject

-(id)initWithStudents:(NSArray *)studentsToAdd;
-(BOOL)addStudent:(Student *)student;

#pragma mark - Save and load
-(void) saveStudent:(Student *)student;
//-(void) loadStudent:(Student *)student;
-(id)serializeStudentToJson:(id) object;
//-(void) saveToFile:(NSString*) fileName;
//-(void) readFromFile:(NSString*) fileName;


@end
