//
//  DishTableViewCell.swift
//  test2
//
//  Created by Chirag Mahajan on 23/11/24.
//

import UIKit

class DishTableViewCell: UITableViewCell {

    @IBOutlet var mealImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var calorieCount: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func updateUI(meal:Meals){
        nameLabel.text=meal.name
        timeLabel.text=meal.time
        calorieCount.text=meal.calories
        mealImage.image=meal.image
    }

}
