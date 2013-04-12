//
//  Course.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-08.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Course : NSObject;

@property(nonatomic, copy) NSString *courseName;
@property(nonatomic, copy) NSString *teacher;
@property(nonatomic, copy) NSString *date;
@property(nonatomic, copy) NSString *classroom;
@property(nonatomic, copy) NSString *assignment;
@property(nonatomic, copy) NSString *message;

-(id)initWithCourseName:(NSString *) courseName
                teacher:(NSString *) teacher
                   date:(NSString *) date
              classroom:(NSString *) classroom
             assignment:(NSString *) assignment
                message:(NSString *) message;

-(BOOL)writeMessage;


@end
