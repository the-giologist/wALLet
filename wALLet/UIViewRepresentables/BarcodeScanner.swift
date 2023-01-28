//
//  BarcodeScanner.swift
//  wALLet
//
//  Created by Gio Peña on 1/27/23.
//

import SwiftUI
import VisionKit

struct BarcodeScanner: UIViewControllerRepresentable {
    @Binding var recognizedItem: RecognizedItem?
    
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
        Coordinator(recognizedItem: $recognizedItem)
    }
    
    
    static func dismantleUIViewController(_ uiViewController: DataScannerViewController, coordinator: Coordinator) {
        uiViewController.stopScanning()
    }
    
    
    
    
    
    
    
    
    
    
    
    //MARK: - Coordinator
    class Coordinator: NSObject, DataScannerViewControllerDelegate {
        @Binding var recognizedItem: RecognizedItem?
        
        init(recognizedItem: Binding<RecognizedItem?>) {
            self._recognizedItem = recognizedItem
        }
        
        
        
        
        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
            recognizedItem = item
            dataScanner.navigationController?.popViewController(animated: true)
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
