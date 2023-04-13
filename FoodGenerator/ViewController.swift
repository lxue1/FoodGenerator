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
    var segueFoodList = [String]()
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var FoodText: UILabel!
    
    @IBOutlet weak var PreferenceTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = "Food Finder App"
        
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
        
        
        segueFoodList.append("Your List is Empty")
        
        displayRandFood()
    }


    @IBAction func RandomButton(_ sender: UIButton)
    {
        displayRandFood()
    }
    func displayRandFood()
    {
        let randomPosition = Int.random(in: 0..<foodList.count)
        let foodNamed = foodList[randomPosition].name
        
        FoodText.text = "\(foodNamed)"
        foodImageView.image = UIImage(named: "\(foodNamed)")
    }
    
    
    @IBAction func showPlanButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowMealPlan", sender: nil)
    }
    
    @IBAction func OrderedButton(_ sender: UIButton)
    {
        segueFoodList.removeAll()
        for _ in 0..<30
        {
            segueFoodList.append(getRandMealwTime(mealTime: "breakfast"))
            segueFoodList.append(getRandMealwTime(mealTime: "lunch"))
            segueFoodList.append(getRandMealwTime(mealTime: "dinner"))
        }
        performSegue(withIdentifier: "ShowMealPlan", sender: nil)
    }
    
    @IBAction func searchButton(_ sender: Any) {
        
    }
    
     func getRandMealwTime(mealTime:String) -> String{
        if (mealTime != "breakfast" && mealTime != "lunch" && mealTime != "dinner")
        {
            return "Input Error"
        }
        var i = Int.random(in: 0..<foodList.count)
         for _ in 0...foodList.count
        {
            if(foodList[i].mealTime == mealTime)
            {
                return foodList[i].name
            }
            else
            {
                i += 1
                i %= foodList.count
            }
        }
        return "no food found"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! MealPlanViewController
        nvc.foodList = segueFoodList
    }
    
}


