//
//  Course.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-08.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Course.h"

@implementation Course

-(id)init
{
    return[self initWithCourseName:@""];
}

- (id)initWithCourseName:(NSString *)courseName
{
    self = [super init];
    
    if (self) {
        self.courseName = courseName;
    }
    return self;
}





@end
