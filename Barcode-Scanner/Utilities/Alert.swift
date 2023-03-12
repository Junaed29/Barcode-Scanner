//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Junaed Muhammad Chowdhury on 12/3/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Something is wrong with the camera. We are unable to capture the input"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScanType = AlertItem(title: Text("Invalid Scan Input"),
                                              message: Text("The value scanned is not valid. This app scans EAN-8 and EAN-13"),
                                              dismissButton: .default(Text("OK")))
}
