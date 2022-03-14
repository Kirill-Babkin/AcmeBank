//
//  BankCard.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/13/22.
//

import SwiftUI

struct BankCard: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      HStack {
        Image("chase-logo-square")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .frame(width: 46.0, height: 46.0)
          .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
          .padding(9)
          .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        
        Spacer()
        Image("visa-logo")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .frame(width: 46.0, height: 46.0)
          .mask(Rectangle())
          .padding(9)
          .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
      }
      Spacer()
      HStack(alignment: .bottom) {
        Group {
          VStack {
            Text("**** **** *****")
              .fontWeight(.semibold)
              .kerning(2.5)
          }.offset(y: 3)
          Text("1234")
            .fontWeight(.semibold)
            .kerning(2.5)
        }
        Spacer()
        Text("12/34")
          .fontWeight(.semibold)
          .kerning(2.5)
      }
      .font(.body)
      .foregroundStyle(.secondary)
    }
    .padding(20)
    .overlay(
      RoundedRectangle(cornerRadius: 30, style: .continuous)
        .stroke(.linearGradient(colors: [.white.opacity(0.3), .black], startPoint: .top, endPoint: .bottom), lineWidth: 2)
        .blendMode(.overlay)
    )
    .frame(height: 250)
    .frame(maxWidth: 380, alignment: .leading)
    .background(.ultraThinMaterial)
    .cornerRadius(30)
    .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
    .padding(.horizontal, 20)
    .background(Image("Blob 1").offset(x: 250, y: -100))
    
  }
}


struct BankCard_Previews: PreviewProvider {
  static var previews: some View {
    BankCard().preferredColorScheme(.light).previewLayout(.fixed(width: 400, height: 400))
    BankCard().preferredColorScheme(.dark).previewLayout(.fixed(width: 400, height: 400))
  }
}
