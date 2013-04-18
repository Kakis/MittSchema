//
//  StudentseviceTests.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-18.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "StudentseviceTests.h"

@implementation StudentseviceTests
{
    Student *testStudent;
}

-(void)setUp
{
    Student *testStudent = [[Student alloc] initWithLastName:@"Testarsson" firstName:@"Testy" course:@"appdev"];
}

-(void)tearDown
{
    testStudent = nil;
    
}



@end
