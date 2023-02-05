//
//  PassCreate.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI
import VisionKit

struct PassCreate: View {
    @State var recognizedItem: RecognizedItem? = nil
        
    private var barcode: RecognizedItem.Barcode? {
        switch recognizedItem {
        case .barcode(let barcode):
            return barcode
        case .text(_):
            return nil
        default:
            return nil
        }
    }
    
    
    
    var body: some View {
        
        VStack {
            
            VStack {
                HStack {
                    Text("Text")
                    Spacer()
                }
                Spacer()
                Text("test")
            }
            .frame(width: 100, height: 300)
            .background(Color(.systemRed).opacity(0.5))
            
            NavigationLink {
                BarcodeScanner(recognizedItem: $recognizedItem)
            } label: {
                Text("Scan Barcode")
            }
            
            if (barcode != nil) {
                HStack {
                    Text("\(barcode?.observation.symbology.rawValue ?? ""): - ")
                    Text(barcode?.payloadStringValue ?? "")
                }
            }
        }
        .onAppear{ viewSetup() }
        
    }
    
    
    private func viewSetup() {
        
    }
}











//MARK: - Preview
struct PassCreate_Previews: PreviewProvider {
    static var previews: some View {
        PassCreate()
    }
}
