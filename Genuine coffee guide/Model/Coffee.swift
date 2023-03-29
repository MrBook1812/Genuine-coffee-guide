//
//  Coffe.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import Foundation
import UIKit

struct CoffeeDrink {
    let name: String
    let base: String
    let milk: String?
    let cream: String?
    let water: String?
    let ice: String?
    
    let description: String
    
    let coffeeImage: UIImage
}

extension CoffeeDrink {
    static func getCoffeDrinks() -> [CoffeeDrink] {
        var drinks: [CoffeeDrink] = []
        
        drinks.append(getEspresso())
        drinks.append(getAmericano())
        drinks.append(getLatte())
        drinks.append(getCappuccino())
        
        return drinks
    }
    
    
    static func getEspresso() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Эспрессо",
                            base: DataStore.shared.espresso,
                            milk: nil,
                            cream: nil,
                            water: nil,
                            ice: nil,
                            description: """
Эспрессо

«сделанный только что,

здесь

и именно для вас»
""",
                            coffeeImage: UIImage(named: "espresso")!)
        
        return drink
    }
    
    static func getAmericano() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Американо",
                            base: DataStore.shared.espresso,
                            milk: nil,
                            cream: nil,
                            water: DataStore.shared.water,
                            ice: nil,
                            description: """
Кофе американо
(итал. Caffè Americano) –
это эспрессо,
разбавленный горячей водой
""",
                            coffeeImage: UIImage(named: "americano")!)
        
        return drink
    }
    
    static func getLatte() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Латте",
                            base: DataStore.shared.espresso,
                            milk: DataStore.shared.milk,
                            cream: nil,
                            water: DataStore.shared.water,
                            ice: nil,
                            description: """
Кофейный напиток латте представляет собой смесь кофе и молока с пенкой.
Готовя классический латте, молоко  вливают в кофе.
Если же влить кофе в молоко, получится латте макиато (latte macchiato).
От ближайшего родственника – капучино, латте отличается пропорциями ингредиентов
(значительно большим количеством молока) и относительно низкой молочной пенкой.
""",
                            coffeeImage: UIImage(named: "latte")!)
        
        return drink
    }
    
    static func getCappuccino() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Капучино",
                            base: DataStore.shared.espresso,
                            milk: DataStore.shared.milk,
                            cream: nil,
                            water: DataStore.shared.water,
                            ice: nil,
                            description: """
Капучино (Cappuccino) – итальянский кофейный напиток на основе эспрессо.
Классический вариант включает в себя двойную порцию черного кофе,
горячее молоко и густую молочную пену.
""",
                            coffeeImage: UIImage(named: "cappuccino")!)
        
        return drink
    }
}

