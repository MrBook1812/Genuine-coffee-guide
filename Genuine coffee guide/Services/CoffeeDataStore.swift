//
//  Resource.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import UIKit

final class CoffeeDataStore {
    static let shared = CoffeeDataStore()
    
    let espresso = "Эспрессо"
    let doubleEspresso = "Двойной эспрессо"
    let ristretto = "Ристретто"
    let water = "Горячая вода"
    let milk = "Молоко"
    let cream = "Сливки"
    let ice = "Лёд"
    
    private init() {}
}

final class MainMenuDataStore {
    static let shared = MainMenuDataStore()
    
    let coffeeDrinks = "Кофейные напитки"
    let tests = "Тесты"
    
    private init() {}
}
