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
                    PassCreate()
                } label: {
                    Image(systemName: "wallet.pass.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Pass Maker")
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
