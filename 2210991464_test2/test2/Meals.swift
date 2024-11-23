//
//  Meals.swift
//  test2
//
//  Created by Chirag Mahajan on 23/11/24.
//

import Foundation
import UIKit
struct Meals{
    var type:String
    var name:String
    var image:UIImage?
    var calories:String
    var time:String
    var category:String
    var nutrition:String
    var ingredients:Ingredient
    init(type: String, name: String, image: UIImage? = nil, calories: String, time: String, category: String, nutrition: String, ingredients: Ingredient) {
        self.type = type
        self.name = name
        self.image = image
        self.calories = calories
        self.time = time
        self.category = category
        self.nutrition = nutrition
        self.ingredients = ingredients
    }
}
struct Ingredient{
    var name:String
    var quantity:Int
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}
