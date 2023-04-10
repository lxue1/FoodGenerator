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
    
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var FoodText: UILabel!
    
    @IBOutlet weak var PreferenceTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        foodList.append(Food(culture: "American", name: "Grilled Cheese", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "Cheese Burger", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "Lobster", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "Benedict Eggs", mealTime: "breakfast"))
        foodList.append(Food(culture: "American", name: "Steak", mealTime: "dinner"))
        foodList.append(Food(culture: "American", name: "Corn Dog", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "Chicken Tenders", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: " Caesar Salad", mealTime: "lunch"))
        foodList.append(Food(culture: "American", name: "Donut", mealTime: "breakfast"))
        foodList.append(Food(culture: "American", name: "Crab", mealTime: "dinner"))
        
        foodList.append(Food(culture: "Asian", name: "Fried Rice", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "Steamed Fish", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "LoMein", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "Dumpling", mealTime: "lunch"))
        foodList.append(Food(culture: "Asian", name: "Porridge", mealTime: "breakfast"))
        foodList.append(Food(culture: "Asian", name: "Peking Duck", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "Steamed Bun", mealTime: "breakfast"))
        foodList.append(Food(culture: "Asian", name: "Ramen", mealTime: "dinner"))
        foodList.append(Food(culture: "Asian", name: "Sushi", mealTime: "lunch"))
        foodList.append(Food(culture: "Asian", name: "Pho", mealTime: "dinner"))
        
        foodList.append(Food(culture: "European", name: "Alfredo Pasta", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "FishNChips", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "Gyro", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "Pizza", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "Bratwurst", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "Waffle", mealTime: "breakfast"))
        foodList.append(Food(culture: "European", name: "Meatballs", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "Caprese Salad", mealTime: "lunch"))
        foodList.append(Food(culture: "European", name: "Beef Stroganoff", mealTime: "dinner"))
        foodList.append(Food(culture: "European", name: "Croissant", mealTime: "breakfast"))

    }


    @IBAction func RandomButton(_ sender: UIButton)
    {
        let randomPosition = Int.random(in: 0..<foodList.count)
        let foodNamed = foodList[randomPosition].name
        
        PreferenceTextField.text = "\(foodNamed)"
        foodImageView.image = UIImage(named: "\(foodNamed)")
        
    }
    
    @IBAction func OrderedButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "ShowMealPlan", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! MealPlanViewController
       
    }
    
}


