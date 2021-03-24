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
    
    @State private var selectedDiv: Division = Division.createDivisions()[0]
    
    @State private var chosenDiv: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    Picker("Please choose a div", selection: $selectedDiv) {
                        ForEach(Division.createDivisions(), id: \.self.code) {
                            Text($0.code)
                        }
                    }
                    
                    Text("Division: \(selectedDiv.code)")
                    
                    Button("Generate Comment", action: {})
                        .padding()
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
            .toolbar {
                //this arrow and stuff is created automatically when you use a navigationLink. I recommend you use that instead of this
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { }) {
                        Image(systemName: "arrowshape.turn.up.left")
                    }
                }
            }
        }
    }
    
    func returnInputs() -> [Bool] {
        return self.inputs
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
