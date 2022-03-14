//
//  CodableBundleExtension.swift
//  AcmeBank
//
//  Created by Kirill Babkin on 3/13/22.
//

import Foundation

extension Bundle {
  func decode(_ file: String) -> Receipt {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) in bundle")
    }
    
    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode(Receipt.self, from: data) else {
      fatalError("Failed to decode \(file) in bundle")
    }
    
    return loaded
  }
}
