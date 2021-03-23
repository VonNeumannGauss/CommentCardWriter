//
//  DivisionTests.swift
//  CommentCardWriterTests
//
//  Created by Marinov, Zachary (Coll) on 22/03/2021.
//

import Foundation

import XCTest

class DivisionTests: XCTestCase {

    func testReturnCodeAndTeacherName() {
        //arrange
        //act
        let myDivision = Division(code: "vCX-1", teacherName: "DPC")
        //assert
        XCTAssertEqual(myDivision.returnCodeAndName(), ["vCX-1", "DPC"])
    }
    
    func testDoesProduceOutputFunctionReturnSomething() {
        //arrange
        //act
        let myDivision = Division(code: "vCX-1", teacherName: "DPC")
        //assert
        XCTAssertNotNil(myDivision.produceOutput())
    }
    
    func testDoesProduceOutputFunctionWorkWhenAllInputDataTrue() {
        //arrange
        let myDivision = Division(code: "vCX-1", teacherName: "DPC")
        //act
        myDivision.inputs = [true, true, true, true, true, true, true, true, true, true]
        //assert
        XCTAssertEqual(myDivision.produceOutput(), "I'm happy. I'm engaged. I'm challenged. I'm working hard. I'm working smart. I'm happy with my EWs. I need to work harder. The teacher is going too fast. The teacher is explaining everything. The lessons are enjoyable. ")
    }
    
    func testDoesProduceOutputFunctionWorkWhenAllInputDataFalse() {
        //arrange
        let myDivision = Division(code: "vCX-1", teacherName: "DPC")
        //act
        myDivision.inputs = [false, false, false, false, false, false, false, false, false, false]
        //assert
        XCTAssertEqual(myDivision.produceOutput(), "I'm not happy. I'm not engaged. I'm not challenged. The teacher is going too slow. The teacher is not explaining everything. ")
    }

}
