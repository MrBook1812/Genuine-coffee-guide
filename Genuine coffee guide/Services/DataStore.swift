//
//  Resource.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import Foundation
import UIKit

final class DataStore {
    static let shared = DataStore()
    
    let espresso = "Эспрессо"
    let doubleEspresso = "Двойной эспрессо"
    let ristretto = "Ристретто"
    let water = "Горячая вода"
    let milk = "Молоко"
    let cream = "Сливки"
    let ice = "Лёд"
    
    private init() {}
}
