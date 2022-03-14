//
//  ContentView.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/12/22.
//

import SwiftUI

struct ContentView: View {
  let receipts: Receipt = Bundle.main.decode("receipt_data.json")
  
  var body: some View {
    ScrollView {
      BankCard()
        .padding(.bottom, 10)
      
        VStack {
          ForEach(receipts.data) {item in
            ReceiptRow(transaction: item)
          }
          Spacer()
        }
        .padding(12)
        .frame(minHeight: 450)
        .frame(maxWidth: 380, alignment: .topLeading)
        .background(.ultraThinMaterial)
        .cornerRadius(30)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal, 20)
        
      
    }
    .background(Image("Blob 1").offset(x: -150, y: 210))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().preferredColorScheme(.light)
    ContentView().preferredColorScheme(.dark)
  }
}
