//
//  PassEditor.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI

struct PassEditor: View {
    
    
    var body: some View {
        List {
            BarcodeScanner()
//            Button {
//                scanBarcode()
//            } label: {
//                Text("Scan Barcode")
//            }

        }
    }
    
    
    private func scanBarcode() {
        
    }
    
    
}











//MARK: - Preview
struct BarcodeScanner_Previews: PreviewProvider {
    static var previews: some View {
        PassEditor()
    }
}
