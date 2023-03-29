//
//  DetailsViewController.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    var drinks: CoffeeDrink!

    @IBOutlet var label: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = drinks.coffeeImage
        label.text = drinks.description
    }


}

