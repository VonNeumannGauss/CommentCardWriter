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
    
    func produceOutput() -> String {
        let dictionaryOfSentences = [0: ["I'm happy."], 1: ["I'm engaged."], 2: ["I'm challenged."], 3: ["I'm working hard."], 4: ["I'm working smart."], 5: ["I'm happy with my EWs."], 6: ["I need to work harder."], 7: ["The teacher is going too fast."], 8: ["The teacher is explaining everything."], 9: ["The lessons are enjoyable."]]
        
        var overallParagraph: String = ""
        for i in 0..<inputs.count {
            if inputs[i] {
                overallParagraph += "\(dictionaryOfSentences[i]![0]) "
            } else {
                overallParagraph += "\(dictionaryOfSentences[i]![0]) "
            }
        }
        
        return overallParagraph
    }
    
}
