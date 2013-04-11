//
//  StudentTests.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-10.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "StudentTests.h"
#import "Student.h"

@implementation StudentTests
{
    Student *englishStudent;
    Student *mathStudent;
}

-(void)setUp
{
    Student *englishStudent = [[Student alloc] initWithLastName:@"Hagfeldt" firstName:@"Jens" course:@"english"];
    Student *mathStudent = [[Student alloc] initWithLastName:@"SjöstrandGereholt" firstName:@"Amelie" course:@"math"];
}

-(void)tearDown
{
    englishStudent = nil;
    mathStudent = nil;
}



@end
