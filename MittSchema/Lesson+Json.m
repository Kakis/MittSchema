//
//  Lesson+Json.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-29.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Lesson+Json.h"

@implementation Lesson (Json)

-(id)jsonValue
{
    NSMutableDictionary *selfAsJson = [[NSMutableDictionary alloc] init];
    
    selfAsJson[@"_id"] = self.id;
    selfAsJson[@"lessonName"] = self.lessonName;
    selfAsJson[@"classroom"] = self.classroom;
    selfAsJson[@"teacher"] = self.teacher;
    selfAsJson[@"lessonDay"] = self.lessonDay;
    selfAsJson[@"startTime"] = self.startTime;
    selfAsJson[@"endTime"] = self.endTime;
    selfAsJson[@"assignment"] = self.assignment;
    
    return selfAsJson;
}


@end
