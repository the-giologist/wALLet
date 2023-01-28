//
//  PassEditor.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI
import VisionKit

struct PassEditor: View {
    @State var recognizedItem: RecognizedItem? = nil
    
    
    private var barcode: RecognizedItem.Barcode? {
        switch recognizedItem {
        case .barcode(let barcode):
            return barcode
        default:
            return nil
        }
    }
    
    var body: some View {
        List {
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
        .onAppear{ updateView() }
    }
    
    
    private func updateView() {
        if let recognizedItem = recognizedItem {
            switch recognizedItem {
            case .barcode(let barcode):
                print(barcode.payloadStringValue)
            case .text(let text):
                print(text.transcript)
            }
        }
    }
    
    
}











//MARK: - Preview
struct BarcodeScanner_Previews: PreviewProvider {
    static var previews: some View {
        PassEditor()
    }
}
