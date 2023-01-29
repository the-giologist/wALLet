//
//  GenericPass.swift
//  wALLet
//
//  Created by Gio Peña on 1/28/23.
//

import Foundation

struct GenericPass {
    var logo: String
    var logoText: String
    var headerFields: String
    var primaryField: String
    var thumbnail: String
    var secondaryField: String
    var auxiliaryField: String
    var barcode: Barcode
    
    
    init(logo: String, logoText: String, headerFields: String, primaryField: String, thumbnail: String, secondaryField: String, auxiliaryField: String, barcode: Barcode) {
        self.logo = logo
        self.logoText = logoText
        self.headerFields = headerFields
        self.primaryField = primaryField
        self.thumbnail = thumbnail
        self.secondaryField = secondaryField
        self.auxiliaryField = auxiliaryField
        self.barcode = barcode
    }
}
