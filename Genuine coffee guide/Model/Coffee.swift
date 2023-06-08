//
//  Coffe.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import UIKit

struct CoffeeDrink {
    let name: String
    let base: String
    let milk: String?
    let cream: String?
    let water: String?
    let ice: String?
    
    let description: String
    
    let coffeeImage: UIImage?
}

extension CoffeeDrink {
    static func getCoffeDrinks() -> [CoffeeDrink] {
        var drinks: [CoffeeDrink] = []
        
        drinks.append(getEspresso())
        drinks.append(getRistretto())
        drinks.append(getAmericano())
        drinks.append(getLatte())
        drinks.append(getCappuccino())
        drinks.append(getFlatWhite())
        
        return drinks
    }
    
    
    static func getEspresso() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Эспрессо",
                            base: CoffeeDataStore.shared.espresso,
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
                            coffeeImage: UIImage(named: "espressoshot") ?? nil)
        
        return drink
    }
    
    static func getRistretto() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Ристретто",
                            base: CoffeeDataStore.shared.ristretto,
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
                            coffeeImage: UIImage(named: "ristretto") ?? nil)
        
        return drink
    }
    
    static func getAmericano() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Американо",
                            base: CoffeeDataStore.shared.espresso,
                            milk: nil,
                            cream: nil,
                            water: CoffeeDataStore.shared.water,
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
                            base: CoffeeDataStore.shared.espresso,
                            milk: CoffeeDataStore.shared.milk,
                            cream: nil,
                            water: CoffeeDataStore.shared.water,
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
                            base: CoffeeDataStore.shared.espresso,
                            milk: CoffeeDataStore.shared.milk,
                            cream: nil,
                            water: nil,
                            ice: nil,
                            description: """
Капучино (Cappuccino) – итальянский кофейный напиток на основе эспрессо.
Классический вариант включает в себя двойную порцию эспрессо,
горячее молоко и густую молочную пену.
""",
                            coffeeImage: UIImage(named: "cappuccino")!)
        
        return drink
    }
    
    static func getFlatWhite() -> CoffeeDrink {
        var drink: CoffeeDrink!
        
        drink = CoffeeDrink(name: "Флет уайт",
                            base: CoffeeDataStore.shared.ristretto,
                            milk: CoffeeDataStore.shared.milk,
                            cream: nil,
                            water: nil,
                            ice: nil,
                            description: """
Флэт уайт очень похож на капучино и латте, но обладает самым выраженным кофейным вкусом.
Флэт уайт отличает пропорция ингредиентов и текстура молока.
Напиток готовят такого же объёма, как и стандартный капучино, но используют две порции ристретто.
Остальной объем занимают молоко и совсем немного молочной пены.
Именно благодаря очень тонкому слою молочной пены, напиток и получил свое название -
flat white или «плоский белый».
""",
                            coffeeImage: UIImage(named: "flatwhite")!)
        
        return drink
    }
}

