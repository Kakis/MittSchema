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

-(id)initWithCourseName:(NSString *) courseName;

-(BOOL)writeMessage;


@end
