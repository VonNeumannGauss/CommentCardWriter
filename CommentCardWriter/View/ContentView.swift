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
    
    @State private var happy = false
    @State private var engaged = false
    @State private var challenged = false
    
    @State private var workingHard = false
    @State private var workingSmart = false
    @State private var happyWithEWs = false
    @State private var needToWorkHarder = false
    
    @State private var goingTooFast = false
    @State private var teacherExplainingWell = false
    @State private var lessonsAreEnjoyable = false
    
    @State private var selectedDiv: String = ""
    
    
    var body: some View {
        let happyBinding = Binding<Bool> (
            get: { self.happy },
            set: { newValue in
                self.happy = newValue
            }
        )
        
        let engagedBinding = Binding<Bool> (
            get: { self.engaged },
            set: { newValue in
                self.engaged = newValue
            }
        )
        let challengedBinding = Binding<Bool> (
            get: { self.challenged },
            set: { newValue in
                self.challenged = newValue
            }
        )
        let workingHardBinding = Binding<Bool> (
            get: { self.workingHard },
            set: { newValue in
                self.workingHard = newValue
            }
        )
        
        let workingSmartBinding = Binding<Bool> (
            get: { self.workingSmart },
            set: { newValue in
                self.workingSmart = newValue
            }
        )
        
        let happyWithEWsBinding = Binding<Bool> (
            get: { self.happyWithEWs },
            set: { newValue in
                self.happyWithEWs = newValue
            }
        )
        
        let needToWorkHarderBinding = Binding<Bool> (
            get: { self.needToWorkHarder },
            set: { newValue in
                self.needToWorkHarder = newValue
            }
        )
        
        let goingTooFastBinding = Binding<Bool> (
            get: { self.goingTooFast },
            set: { newValue in
                self.goingTooFast = newValue
            }
        )
        
        let teacherExplainingWellBinding = Binding<Bool> (
            get: { self.teacherExplainingWell },
            set: { newValue in
                self.teacherExplainingWell = newValue
            }
        )
        
        let lessonsAreEnjoyableBinding = Binding<Bool> (
            get: { self.lessonsAreEnjoyable },
            set: { newValue in
                self.lessonsAreEnjoyable = newValue
            }
        )
        
        
        NavigationView {
            VStack {
                VStack {
                    Picker("Please choose a div", selection: $selectedDiv) {
                        ForEach(Division.createDivisions(), id: \.self.code) {
                            Text($0.code)
                        }
                    }
                    
                    Text("Division: \(selectedDiv)")
                    
                    Button("Generate Comment", action: {})
                        .padding()
                }
                Form {
                    Section(header: Text("Attitude") ) {
                        Toggle("Happy?", isOn: happyBinding)
                        Toggle("Engaged?", isOn: engagedBinding)
                        Toggle("Challenged?", isOn: challengedBinding)
                    }
                
                    Section(header: Text("Performance")) {
                        Toggle("Working hard?", isOn: workingHardBinding)
                        Toggle("Working smart?", isOn: workingSmartBinding)
                        Toggle("Happy with EWs?", isOn: happyWithEWsBinding)
                        Toggle("Need to work harder?", isOn: needToWorkHarderBinding)
                    }
                    Section(header: Text("Thoughts on Teacher")) {
                        Toggle("Going too fast?", isOn: goingTooFastBinding)
                        Toggle("Teacher explaining everything?", isOn: teacherExplainingWellBinding)
                        Toggle("Lessons are enjoyable?", isOn: lessonsAreEnjoyableBinding)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
