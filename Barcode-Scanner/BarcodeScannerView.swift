//
//  BarcodeScannerView.swift
//  Barcode-Scanner
//
//  Created by Junaed Muhammad Chowdhury on 5/3/23.
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

struct BarcodeScannerView: View {
    @State private var barCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                
                ScannerView(barcode: $barCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
             
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(barCode.isEmpty ? "Not Yet Scanned" : barCode)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(barCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
