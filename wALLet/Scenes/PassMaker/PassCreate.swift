//
//  PassCreate.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI

struct PassCreate: View {
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











//MARK: - Preview
struct PassCreate_Previews: PreviewProvider {
    static var previews: some View {
        PassCreate()
    }
}
