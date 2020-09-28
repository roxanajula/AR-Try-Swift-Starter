//
//  Apartment.swift
//  AR Try Swift
//
//  Created by Roxana Jula on 25/09/2020.
//  Copyright © 2020 Roxana Jula. All rights reserved.
//

import Foundation
import QuickLook

struct Apartment: Codable, Equatable, Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Int

    static let all: [Apartment] = Bundle.main.decode("apartments.json")
}
