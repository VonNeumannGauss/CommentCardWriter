//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Marinov, Zachary (Coll) on 22/03/2021.
//

import Foundation

class Division {
    let code: String
    let teacherName: String
    var inputs: [Bool] = []
    
    init(code: String, teacherName: String) {
        self.code = code
        self.teacherName = teacherName
    }
    
    func returnInputs() -> [Bool] {
        return inputs
    }
    
    func returnCodeAndName() -> [String] {
        return [code, teacherName]
    }
    
    func inputGatherer() -> [Bool] {
        return [true]
    }
    
    func produceOutput() -> String {
        
    }
    
}
