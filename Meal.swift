//
//  Meal.swift
//  FoodTracker
//
//  Created by Kohei Yamamoto on 2016/09/22.
//  Copyright © 2016年 Kohei Yamamoto. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int

    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        if name.isEmpty || rating < 0 {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
