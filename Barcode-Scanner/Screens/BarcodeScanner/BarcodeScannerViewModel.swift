//
//  BarcodeScannerViewModel.swift
//  Barcode-Scanner
//
//  Created by Junaed Muhammad Chowdhury on 12/3/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    @Published var barCode = ""
    @Published var alertItem: AlertItem?
    
    var barcodeStatusText: String{
        barCode.isEmpty ? "Not Yet Scanned" : barCode
    }
    
    var barcodeStatusColor: Color{
        barCode.isEmpty ? .red : .green
    }
}
