//
//  ViewController.swift
//  FoodGenerator
//
//  Created by Xue, Luke G on 3/23/23.
//

import UIKit

class ViewController: UIViewController
{
    
    var foodList = [Food]()
    
    
    @IBOutlet weak var FoodText: UILabel!
    
    @IBOutlet weak var PreferenceTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        foodList.append(Food(culture: "American", name: "grilledCheese", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "cheeseBurger", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "grilledCheese", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "benedictEggs", mealTime: "breakfast"))
        foodList.append(Food(culture: "American", name: "steak", mealTime: "dinner"))
        foodList.append(Food(culture: "American", name: "cornDog", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "chickenTender", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: " caeserSalad", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "tunaSandwich", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "lobster", mealTime: "dinner"))
        
        foodList.append(Food(culture: "Asian", name: "friedRice", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "steamedFish", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "loMein", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "dumpling", mealTime: "lunch"))
        foodList.append(Food(culture: "Asian", name: "porridge", mealTime: "breakfast"))
        foodList.append(Food(culture: "Asian", name: "pekingDuck", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "steamedBun", mealTime: "breakfast"))
        foodList.append(Food(culture: "Asian", name: "ramen", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "sushi", mealTime: "lunch"))
        foodList.append(Food(culture: "Asian", name: "pho", mealTime: "dinner"))
        
        foodList.append(Food(culture: "European", name: "alfredoPasta", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "fishNChips", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "gyro", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "pizza", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "bratwurst", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "waffle", mealTime: "breakfast"))
        foodList.append(Food(culture: "European", name: "meatballs", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "capreseSalad", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "beefStroganoff", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "croissant", mealTime: "breakfast"))

    }


    @IBAction func RandomButton(_ sender: UIButton)
    {
        print("random button pressed")
    }
    
    @IBAction func OrderedButton(_ sender: UIButton)
    {
        FoodText.text = getRandFoodwMeal(meal: "breakfast")
    }
    func getRandFoodwMeal(meal: String) -> String
    {
        
    }
    
}


