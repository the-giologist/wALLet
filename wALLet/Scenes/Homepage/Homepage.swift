//
//  ContentView.swift
//  wALLet
//
//  Created by Gio Peña on 1/2/23.
//

import SwiftUI
import PassKit

struct Homepage: View {
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    PassCreate()
                } label: {
                    Image(systemName: "wallet.pass.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Pass Maker")
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











//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
