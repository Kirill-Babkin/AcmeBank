//
//  RowTitle.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/13/22.
//

import SwiftUI

struct RowTitle: View {
  var title: String
  var amount: CGFloat
  var body: some View {
    let formatted = String(format: "%.2f", amount)
    
    HStack {
      Image(systemName: "dollarsign.circle.fill")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
        .frame(width: 16.0, height: 16.0)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(9)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
      Text(title)
        .font(.callout)
        .fontWeight(.semibold)
      Spacer()
      Text("$\(formatted)")
        .font(.callout)
        .fontWeight(.semibold)
    }
  }
}

struct RowTitle_Previews: PreviewProvider {
  static let title = "Apple.com"
  static let ammount = 120.99
  static var previews: some View {
    RowTitle(title: title, amount: ammount).preferredColorScheme(.light).previewLayout(.fixed(width: 400, height: 100))
    RowTitle(title: title, amount: ammount).preferredColorScheme(.dark).previewLayout(.fixed(width: 400, height: 100))
  }
}
