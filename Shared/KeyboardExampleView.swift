//
//  KeyboardExampleView.swift
//  ToolbarProject
//
//  Created by Karin Prater on 30.10.21.
//

import SwiftUI

struct KeyboardExampleView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text("Keyboard")
            TextField("", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
        }
        .padding()
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button {
                    text.append("this thing")
                } label: {
                    Text("this thing")
                }

            }
        }
    }
}

struct KeyboardExampleView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardExampleView()
    }
}
