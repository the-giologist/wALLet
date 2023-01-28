//
//  ContentView.swift
//  wALLet
//
//  Created by Gio Peña on 1/2/23.
//

import SwiftUI
import AVFoundation

struct Homepage: View {
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    PassEditor()
                } label: {
                    Image(systemName: "wallet.pass.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Pass Maker")
                }
                
                NavigationLink {
//                    BarcodeScanner()
                } label: {
                    Image(systemName: "barcode")
                    Text("Barcode Scanner")
                }

            }
        }
        .navigationTitle("Homepage")
        .onAppear { setup() }
    }
    
    
    private func setup() {
        AVCaptureDevice.requestAccess(for: .video) { response in
            print(#function)
        }
    }
}











//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
