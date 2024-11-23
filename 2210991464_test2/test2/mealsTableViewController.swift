//
//  recipeTableViewController.swift
//  test2
//
//  Created by Chirag Mahajan on 23/11/24.
//

import UIKit

class mealsTableViewController: UITableViewController {
    var meals:[Meals] = []
    
    let potatoes = Ingredient(name: "Potatoes", quantity: 450)
    let pumpkin = Ingredient(name: "Pumpkin", quantity: 250)

    let suji = Ingredient(name: "Suji", quantity: 50)


    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! DishTableViewCell
        let meal = meals[indexPath.row]
        cell.updateUI(meal: meal)


        return cell
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let meals = meals[0]
//        return meals.text
//    }
    
     @IBSegueAction func sendData(_ coder: NSCoder, sender: Any?) -> MealDetailViewController? {
         
     return MealDetailViewController(coder: coder)
     }
     // Override to support conditional editing of the table view.
   // override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
      //  return true
    //}
    //*/

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func loadSampleData(){
        // Sample Meals
        let meal1 = Meals(
            type: "Lunch",
            name: "Boiled potatoes with Rice",
            image: UIImage(named: "boiled potatoes"), // Use actual asset names from your project
            calories: "600 kcal",
            time: "30 minutes",
            category: "Veg",
            nutrition: "High carbohydrates",
            ingredients: potatoes
        )

        let meal2 = Meals(
            type: "Dinner",
            name: "Suji with besan chilla",
            image: UIImage(named: "suji"),
            calories: "450 kcal",
            time: "20 minutes",
            category: "Veg",
            nutrition: "Moderate Carbs",
            ingredients: suji
        )

        let meal3 = Meals(
            type: "Snack",
            name: "Steamed Broccoli",
            image: UIImage(named: "pumpkin"),
            calories: "100 kcal",
            time: "10 minutes",
            category: "Vegan",
            nutrition: "Low Calorie",
            ingredients: pumpkin
        )

        meals.append(meal1)
        meals.append(meal2)
        meals.append(meal3)

       
    }

}
