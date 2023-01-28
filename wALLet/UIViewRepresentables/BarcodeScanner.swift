//
//  BarcodeScanner.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI
import VisionKit

struct BarcodeScanner: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> DataScannerViewController {
        let view = DataScannerViewController(recognizedDataTypes:[.barcode()],
                                           qualityLevel: .balanced,
                                           recognizesMultipleItems: true,
                                           isHighFrameRateTrackingEnabled: false,
                                           isPinchToZoomEnabled: true,
                                           isGuidanceEnabled: true,
                                           isHighlightingEnabled: true)
        return view
    }
    
    
    func updateUIViewController(_ uiViewController: DataScannerViewController, context: Context) {
        uiViewController.delegate = context.coordinator
        try? uiViewController.startScanning()
    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    
    static func dismantleUIViewController(_ uiViewController: DataScannerViewController, coordinator: Coordinator) {
        uiViewController.stopScanning()
    }
    
    
    
    
    
    
    
    
    
    
    
    //MARK: - Coordinator
    class Coordinator: NSObject, DataScannerViewControllerDelegate {
//        @Binding var recognizedItems: [String]
        
        override init() {
            
        }
        
        
        
        
        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
            print(#function)
        }
        
        
        func dataScannerDidZoom(_ dataScanner: DataScannerViewController) {
            print(#function)
        }
        
        
        func dataScanner(_ dataScanner: DataScannerViewController, didAdd addedItems: [RecognizedItem], allItems: [RecognizedItem]) {
            print(#function)
        }
        
        
        func dataScanner(_ dataScanner: DataScannerViewController, didRemove removedItems: [RecognizedItem], allItems: [RecognizedItem]) {
            print(#function)
        }
        
        
        func dataScanner(_ dataScanner: DataScannerViewController, becameUnavailableWithError error: DataScannerViewController.ScanningUnavailable) {
            print(#function)
        }
    }
}
