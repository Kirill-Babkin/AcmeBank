//
//  CartView.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/14/22.
//

import SwiftUI

struct CartView: View {
  var items: [Item]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
        ForEach(items) {item in
          CartItemView(item:  item)
        }
      Spacer()
    }
    .frame(maxWidth: .infinity, alignment: .topLeading)
    .background(.ultraThinMaterial)
    .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
  }
}

struct CartView_Previews: PreviewProvider {
  static let receipt = Bundle.main.decode("receipt_data.json")
  
  static var previews: some View {
    CartView(items: receipt.data[0].items).preferredColorScheme(.light).previewLayout(.fixed(width: 400, height: 400))
    CartView(items: receipt.data[0].items).preferredColorScheme(.dark).previewLayout(.fixed(width: 400, height: 400))
  }
}
