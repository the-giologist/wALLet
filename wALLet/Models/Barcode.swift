//
//  Barcode.swift
//  wALLet
//
//  Created by Gio Peña on 1/28/23.
//

import Foundation

struct Barcode {
    var format: String
    var message: String
    var messageEncoding: String
    
    
    init(format: String, message: String, messageEncoding: String) {
        self.format = format
        self.message = message
        self.messageEncoding = messageEncoding
    }
}
