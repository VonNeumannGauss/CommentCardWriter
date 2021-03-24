//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import SwiftUI

//need a back arrow in top left corner (to take you back to home screen)
//of course, all choices should be saved when you do that

struct ContentView: View {
    
    @State private var inputs: [Bool] = [false, false, false, false, false, false, false, false, false, false]
    
    @State private var chosenDiv: String = ""
    
    func returnDivision(divisions: [Division], code: String) -> Division? {
        for division in divisions {
            if division.code == code {
                return division
            }
        }
        
        return nil
    }
    
    func returnInputs() -> [Bool] {
        return self.inputs
    }
    
    func generateComment() -> Division {
        if let division = returnDivision(divisions: Division.createDivisions(), code: chosenDiv) {
            division.makeInputs(newInputs: returnInputs())
            return division
        }
        return Division(code: "", teacherName: "")
    }

    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    Picker("Please choose a div", selection: $chosenDiv) {
                        ForEach(Division.createDivisions(), id: \.self.code) {
                            Text($0.code)
                        }
                    }
                    
                    Text("Division: \(chosenDiv)")
                        .padding()
                    
                    NavigationLink(destination: OutputView(division: generateComment())) {
                        Text("Generate Comment")
                    }
                }
                Form {
                    Section(header: Text("Attitude") ) {
                        Toggle("Happy?", isOn: $inputs[0])
                        Toggle("Engaged?", isOn: $inputs[1])
                        Toggle("Challenged?", isOn: $inputs[2])
                    }
                
                    Section(header: Text("Performance")) {
                        Toggle("Working hard?", isOn: $inputs[3])
                        Toggle("Working smart?", isOn: $inputs[4])
                        Toggle("Happy with EWs?", isOn: $inputs[5])
                        Toggle("Need to work harder?", isOn: $inputs[6])
                    }
                    Section(header: Text("Thoughts on Teacher")) {
                        Toggle("Going too fast?", isOn: $inputs[7])
                        Toggle("Teacher explaining everything?", isOn: $inputs[8])
                        Toggle("Lessons are enjoyable?", isOn: $inputs[9])
                    }
                }
            }
            .navigationTitle("Data Collection")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
