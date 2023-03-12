//
//  BarcodeScannerView.swift
//  Barcode-Scanner
//
//  Created by Junaed Muhammad Chowdhury on 5/3/23.
//

import SwiftUI


struct BarcodeScannerView: View {

    @StateObject var viewModel: BarcodeScannerViewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(barcode: $viewModel.barCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
             
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.barcodeStatusText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(viewModel.barcodeStatusColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
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
