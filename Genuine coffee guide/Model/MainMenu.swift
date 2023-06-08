//
//  MainMenu.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 31.03.2023.
//

import UIKit

let mainMenuCells = ["Кофейные напитки"]

struct MainMenu {
    var cells: [String]
    
    static func getMainMenuCells() -> MainMenu {
        var cells: MainMenu!
        
        for mainMenuCell in mainMenuCells {
            cells.cells.append(mainMenuCell)
        }
        
        return cells
    }
}



