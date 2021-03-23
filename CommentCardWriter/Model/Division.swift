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
        let dictionaryOfSentences = [0: ["I'm happy.", "I'm not happy."], 1: ["I'm engaged.", "I'm not engaged."], 2: ["I'm challenged.", "I'm not challenged."], 3: ["I'm working hard."], 4: ["I'm working smart."], 5: ["I'm happy with my EWs."], 6: ["I need to work harder."], 7: ["The teacher is going too fast.", "The teacher is going too slow."], 8: ["The teacher is explaining everything.", "The teacher is not explaining everything."], 9: ["The lessons are enjoyable."]]
        
        var overallParagraph: String = ""
        for i in 0..<inputs.count {
            if inputs[i] {
                overallParagraph += "\(dictionaryOfSentences[i]![0]) "
            } else {
                let theListInDictionary = dictionaryOfSentences[i]!
                let lengthOfList = theListInDictionary.count
                if lengthOfList > 1 {
                    overallParagraph += "\(dictionaryOfSentences[i]![1]) "
                }

            }
        }
        
        return overallParagraph
    }
    
    #if DEBUG
    
    static func createDivisions() -> [Division] {
        let myDivisions: [Division] = [Division(code: "vCX-1", teacherName: "DPC"), Division(code: "cCV-1", teacherName: "RRM"), Division(code: "MCW-1", teacherName: "RSOJ"), Division(code: "MCW-1a", teacherName: "JMS")]
        
        return myDivisions
    }
    
    #endif
    
    
}
