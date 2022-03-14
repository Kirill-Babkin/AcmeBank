//
//  SwiftUIView.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/13/22.
//

import SwiftUI

struct ReceiptRow: View {
  @State private var isExpanded = false
  var transaction: Transaction;
  
  var body: some View {
    DisclosureGroup(
      isExpanded: $isExpanded,
      content: {
        CartView(items: transaction.items)
      },
      label: {
        RowTitle(title: transaction.store.displayName, amount: transaction.payment.chargedAmount)
          .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
          .padding(9)
          .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
          .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
      })
      .foregroundColor(.primary)
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static let receipt = Bundle.main.decode("receipt_data.json")
  static var previews: some View {
    ReceiptRow(transaction: receipt.data[0]).preferredColorScheme(.light).previewLayout(.fixed(width: 400, height: 100))
    ReceiptRow(transaction: receipt.data[0]).preferredColorScheme(.dark).previewLayout(.fixed(width: 400, height: 100))
  }
}
