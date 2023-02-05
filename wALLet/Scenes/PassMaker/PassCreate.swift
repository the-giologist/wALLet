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
                    Text("29x\n29")
                        .font(Font.caption2)
                        .frame(width: 29, height: 29)
                        .background(Color(.white).opacity(0.4))
                    Spacer()
                    TextField("Logo Text", text: .constant(""))
                        .background(Color(.white).opacity(0.4))
                        .frame(width: 225, height: 29)
                    Spacer()
                    Text("Field")
                        .font(Font.caption2)
                        .frame(width: 45, height: 29)
                        .background(Color(.white).opacity(0.4))
                }
                .padding(EdgeInsets(top: 20, leading: 15, bottom: 20, trailing: 15))
                
                Spacer()
                Text("test")
            }
            .frame(width: 350, height: 510)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemRed).opacity(0.5))
            )
            
            NavigationLink {
                BarcodeScanner(recognizedItem: $recognizedItem)
            } label: {
                Text("Scan Barcode")
            }
            Spacer()
            
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
