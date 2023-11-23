//
//  Item.swift
//  SwiftDoctor5
//
//  Created by Student on 23.11.2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
