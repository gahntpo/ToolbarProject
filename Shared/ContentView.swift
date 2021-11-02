//
//  ContentView.swift
//  Shared
//
//  Created by Karin Prater on 30.10.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
            Text("Hello, world!")
                NavigationLink("Detail",
                               destination: DetailView())
                #if os(iOS)
                NavigationLink("keyboard",
                               destination: KeyboardExampleView())
                #endif
            }
                .padding()
                .toolbar(id: "my toolbar", content: {
                    ToolbarItem(id: "navigation", placement: .navigation, showsByDefault: true) {
                        Text("navigation")
                    }
                    
                    ToolbarItem(id: "status", placement: .status, showsByDefault: true) {
                        Label("status", systemImage: "person.circle")
                    }
                    
                    ToolbarItem(id: "primary", placement: .primaryAction, showsByDefault: true) {
                        Label("primary", systemImage: "star")
                    }
                })
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
