//
//  Package.swift
//  FightCamp-Homework
//
//  Created by Valerie Don on 9/22/20.
//  Copyright © 2020 Alexandre Marcotte. All rights reserved.
//

import UIKit

struct Package: Decodable {
    let title, desc: String
    let thumbnailUrls: [String]
    let included: [String]
    let excluded: [String]?
    let payment: String
    let price: Int
    let action: String
    let headline: String?
}
