// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Receipt: Codable {
  let data: [Transaction]
  let errors: [String]
}

// MARK: - Datum
struct Transaction: Codable, Identifiable {
  let id: String
  let btRowKey, consumerToken: String
  let itemCount: Int
  let items: [Item]
  let locationType: String
  let merchant: Merchant
  let payment: Payment
  let purchaseTs, receivedTs, sourceConsumerToken: String
  let sourceID: Int
  let sourceReceiptID, sourceTransactionID: String
  let store: Store
  
  enum CodingKeys: String, CodingKey {
    case btRowKey = "bt_row_key"
    case consumerToken = "consumer_token"
    case id
    case itemCount = "item_count"
    case items
    case locationType = "location_type"
    case merchant, payment
    case purchaseTs = "purchase_ts"
    case receivedTs = "received_ts"
    case sourceConsumerToken = "source_consumer_token"
    case sourceID = "source_id"
    case sourceReceiptID = "source_receipt_id"
    case sourceTransactionID = "source_transaction_id"
    case store
  }
}

// MARK: - Item
struct Item: Codable, Identifiable {
  let brand: String
  let categoryIDS: [Int]
  let itemDescription: String
  let discount, id: Int
  let imageURL: String
  let price: Double
  let quantity: Int
  let sku: String
  let unitPrice: Double
  let upc: String
  
  enum CodingKeys: String, CodingKey {
    case brand
    case categoryIDS = "category_ids"
    case itemDescription = "description"
    case discount, id
    case imageURL = "image_url"
    case price, quantity, sku
    case unitPrice = "unit_price"
    case upc
  }
}

// MARK: - Merchant
struct Merchant: Codable {
  let categoryIDS: [Int]
  let displayName: String
  let id: Int
  let name, token: String
  
  enum CodingKeys: String, CodingKey {
    case categoryIDS = "category_ids"
    case displayName = "display_name"
    case id, name, token
  }
}

// MARK: - Payment
struct Payment: Codable {
  let arn, authCode, cardLastFour: String
  let changeDueAmount: Int
  let chargedAmount: Double
  let currency, paymentType, scheme: String
  let subtotalAmount, taxAmount: Double
  let tipAmount: Int
  let totalAmount: Double
  
  enum CodingKeys: String, CodingKey {
    case arn
    case authCode = "auth_code"
    case cardLastFour = "card_last_four"
    case changeDueAmount = "change_due_amount"
    case chargedAmount = "charged_amount"
    case currency
    case paymentType = "payment_type"
    case scheme
    case subtotalAmount = "subtotal_amount"
    case taxAmount = "tax_amount"
    case tipAmount = "tip_amount"
    case totalAmount = "total_amount"
  }
}

// MARK: - Store
struct Store: Codable {
  let address: Address
  let displayName: String
  let id: Int
  let name, phoneNumber: String
  
  enum CodingKeys: String, CodingKey {
    case address
    case displayName = "display_name"
    case id, name
    case phoneNumber = "phone_number"
  }
}

// MARK: - Address
struct Address: Codable {
  let the142MainSt, floor2, bestCity, us: String
  let id: Int
  let postalCode, state: String
  
  enum CodingKeys: String, CodingKey {
    case the142MainSt = "142 Main St"
    case floor2 = "Floor 2"
    case bestCity = "Best City"
    case us = "US"
    case id
    case postalCode = "postal_code"
    case state
  }
}
