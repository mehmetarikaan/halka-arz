//
//  Response.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 10.08.2022.
//

import Foundation

// MARK: - Welcome
struct Response: Codable {
    let arzlar: [Arzlar]
    let success: Int
}

// MARK: - Arzlar
struct Arzlar: Codable, Identifiable {
    let id = UUID()
    let arzID, arzAd, arzKod: String

    enum CodingKeys: String, CodingKey {
        case arzID = "arz_id"
        case arzAd = "arz_ad"
        case arzKod = "arz_kod"
    }
}
