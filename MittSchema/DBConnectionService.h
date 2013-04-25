//
//  DBConnectionService.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-24.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "course.h"
#import "Scheme.h"
#import "Admin.h"


@interface DBConnectionService : NSObject

typedef void (^GetStudentResponce)(NSArray *getStudent);

-(void) getStudentWithID:(NSString*)_id onCompletion:(GetStudentResponce) getStudentResponce;

@end
