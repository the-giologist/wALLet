//
//  ContentView.swift
//  wALLet
//
//  Created by Gio Peña on 1/2/23.
//

import SwiftUI
import PassKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    PassView()
                } label: {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, Gio!")
                }
                NavigationLink {
                    Text("Barcode Scanner")
                } label: {
                    Image(systemName: "barcode")
                    Text("Barcode Scanner")
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







struct PassView : View {
    var body: some View {
        VStack {
            Button {
                addPass()
            } label: {
                Text("Add Pass")
            }

        }
        .onAppear{ setup() }
    }
    
    
    
    private func setup() {
        
    }
    
    
    private func addPass() {
        print(#function)
    }
}
