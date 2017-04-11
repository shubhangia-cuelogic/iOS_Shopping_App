//
//  ProductPresenterTests.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ProductDataLoadAPI.h"
#import "ProductAPIProtocol.h"
#import <OCMockito/OCMockito.h>
#import <OCHamcrest/OCHamcrest.h>

@interface ProductPresenterTests : XCTestCase

@end

@implementation ProductPresenterTests
id <ProductAPIProtocol> api;

- (void)setUp {
    [super setUp];
    api=mockProtocol(@protocol(ProductAPIProtocol));
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)testLoadProductDataWithSuccess {
    //api.LoadProductData:"" withCallback:(void (^)(ProductModel *responseData, NSString *error))callbackBlock
    
     XCTestExpectation *expectation = [self expectationWithDescription:@"LoadData"];
    
    [api loadProductData:^(id responseData, NSString *error) {
        if (error == nil) {
            
            XCTAssertNil(error, @"Failure response");
           
            
        }
        else {
            XCTAssertNotNil(error, @"Failure response");
        }
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:120.0 handler:nil];
}

@end
