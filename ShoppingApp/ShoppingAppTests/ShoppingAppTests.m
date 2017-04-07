//
//  ShoppingAppTests.m
//  ShoppingAppTests
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ShoppingAppTests : XCTestCase

@end

@implementation ShoppingAppTests
  - (void)setUp {
    [super setUp];
      
    // Put setup code here. This method is called before the invocation of each test method in the class.
   //  api = mockProtocol(@protocol(ProductAPIProtocol));
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testProductAPI {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
  
}

@end
