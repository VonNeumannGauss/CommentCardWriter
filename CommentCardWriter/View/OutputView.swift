//
//  OutputView.swift
//  CommentCardWriter
//
//  Created by Marinov, Zachary (Coll) on 16/03/2021.
//

import SwiftUI

//back button to take you to data collection page - top left
//finish button to take you back to menu
//use NavigationLink for all of these buttons

//of course you want the generated comment to be stored somewhere

struct OutputView: View {
    
    @State var textInput: String = "Otherwise, insert a new comment here"
    @State var toggleHappyWithGeneratedContent: Bool = true
    
    var body: some View {
        
        let textInputBinding = Binding<String> (
            get: { self.textInput },
            set: { newValue in
                self.textInput = newValue
            }
        )
        
        NavigationView {
            VStack {
                VStack {
                    Text("Teacher: DPC")
                    Text("Div: vCX-1")
                }
                Form {
                    Section(header: Text("Generated comment")) {
                        Text("I am enjoying CS and loving the hands-on, engaging approach to teaching and learning!")
                            .padding()
                        Toggle("Happy with the generated content?", isOn: $toggleHappyWithGeneratedContent)
                            .padding()
                    }
                    Section(header: Text("Edit")) {
                        TextEditor(text: textInputBinding)
                    }
                }
            }.navigationTitle("Output")
        }
    }
}

struct OutputView_Previews: PreviewProvider {
    static var previews: some View {
        OutputView()
    }
}
