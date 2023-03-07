//
//  BarcodeScannerView.swift
//  Barcode-Scanner
//
//  Created by Junaed Muhammad Chowdhury on 5/3/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
             
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
