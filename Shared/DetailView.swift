//
//  DetailView.swift
//  ToolbarProject
//
//  Created by Karin Prater on 30.10.21.
//

import SwiftUI

struct DetailView: View {
    
    @State private var showNavigation = false
    @State private var showNavigationLeading = false
    @State private var showNavigationTrailing = false
    
    @State private var showPrincipal = false
    @State private var showPrimaryAction = false
    @State private var showDestructiveAction = false
    @State private var showConfirmationAction = false
    @State private var showCancellationAction = false
    
    @State private var showBottomBar: Bool = false
    @State private var showStatus = false
    
    var body: some View {
        VStack {
            Toggle("navigation",
                   isOn: $showNavigation)
                .background(Color.yellow)
            Toggle("navigationBarLeading (not for macOS)",
                   isOn: $showNavigationLeading)
                .border(Color.yellow)
            Toggle("navigationBarTrailing (not for macOS)",
                   isOn: $showNavigationTrailing)
                .border(Color.yellow)
            
            Toggle("principal", isOn: $showPrincipal)
            
            Toggle("primaryAction", isOn: $showPrimaryAction)
                .border(Color.blue)
            Toggle("confirmationAction", isOn: $showConfirmationAction)
                .border(Color.blue)
            Toggle("destructiveAction", isOn: $showDestructiveAction)
                .border(Color.orange)
            Toggle("cancellationAction", isOn: $showCancellationAction)
                .border(Color.red)
            
            Toggle("bottomBar (not for macOS)", isOn: $showBottomBar)
                .padding()
                .border(Color.green)
            Toggle("status", isOn: $showStatus)
                .padding()
                .background(Color.green)
        }
        .padding()
        .toolbar {
            
            ToolbarItemGroup(placement: .navigation) {
                if showNavigation {
                    Text("navigation")
                        .background(Color.yellow)
                }
            }
            
            #if os(iOS)
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                if showNavigationTrailing {
                    Text("navBarTrailing")
                        .border(Color.yellow)
                }
            }
            ToolbarItemGroup(placement: .navigationBarLeading) {
                if showNavigationLeading {
                    Text("navBarLeading")
                        .border(Color.yellow)
                }
            }
            #endif

            ToolbarItem(placement: .principal) {
                if showPrincipal {
                    Text("principal")
                        .border(Color.blue)
                }
            }
            ToolbarItem(placement: .primaryAction) {
                if showPrimaryAction {
                    Text("primaryA")
                        .border(Color.blue)
                }
            }
            ToolbarItem(placement: .confirmationAction) {
                if showConfirmationAction {
                    Text("confirmationA")
                }
            }
            ToolbarItem(placement: .destructiveAction) {
                if showDestructiveAction {
                    Text("destructiveA")
                        .border(Color.red)
                }
            }
            ToolbarItem(placement: .cancellationAction) {
                if showCancellationAction {
                    Text("cancellationA")
                        .border(Color.orange)
                }
            }
            
            #if os(iOS)
            ToolbarItemGroup(placement: .bottomBar) {
                if showBottomBar {
                    Text("detail toolbar")
                        .border(Color.green)
                    Text("bottom")
                        .border(Color.green)
                    Text("bar")
                        .border(Color.green)
                }
            }
            #endif
            
            ToolbarItemGroup(placement: .status) {
                if showStatus {
                    Text("status")
                        .background(Color.green)
                }
            }
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
        }
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}
