//
//  CartItemView.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/14/22.
//

import SwiftUI

struct CartItemView: View {
  var item: Item
  var body: some View {
    let formatedUnitPrice = String(format: "%.2f", item.unitPrice)
    
    HStack {
      Image(systemName: "dollarsign.circle")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
        .frame(width: 16.0, height: 16.0)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(9)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(9)
      VStack {
        HStack {
          Text(item.itemDescription)
            .font(.footnote)
            .fontWeight(.medium)
            .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
          .lineLimit(1)
          .padding(.trailing)
          Spacer()
        }
        HStack(alignment: .center, spacing: 12) {
            Text("\(item.quantity)").font(.footnote)
              .fontWeight(.semibold)
              .foregroundStyle(.secondary)
            Text("x").font(.footnote)
              .fontWeight(.semibold)
              .foregroundStyle(.secondary)
            Text("$\(formatedUnitPrice)").font(.footnote)
              .fontWeight(.semibold)
              .foregroundStyle(.secondary)
            Spacer()
          Text(String(format: "$%.2f", Double(item.quantity) * item.unitPrice)).font(.footnote)
              .fontWeight(.semibold)
              .foregroundStyle(.secondary)
              .padding(.trailing)
        }
      }
    }
  }
}

struct CartItemView_Previews: PreviewProvider {
  static let receipt = Bundle.main.decode("receipt_data.json")
  static var previews: some View {
    CartItemView(item: receipt.data[0].items[0])
  }
}
