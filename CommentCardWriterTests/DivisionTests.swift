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

}
