//
//  Meal.swift
//  FoodTracker
//
//  Created by Kohei Yamamoto on 2016/09/22.
//  Copyright © 2016年 Kohei Yamamoto. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int

    // MARK: Archiving Paths
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("meals")

    // MARK: Types
    struct PropertyKey {
        static let nameKey   = "name"
        static let photoKey  = "photo"
        static let ratingKey = "rating"
    }

    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        if name.isEmpty || rating < 0 { return nil }

        self.name   = name
        self.photo  = photo
        self.rating = rating
        super.init()
    }

    required convenience init?(coder aDecoder: NSCoder) {
        let name   = aDecoder.decodeObject(forKey: PropertyKey.nameKey)   as! String
        let photo  = aDecoder.decodeObject(forKey: PropertyKey.photoKey)  as! UIImage
        let rating = aDecoder.decodeObject(forKey: PropertyKey.ratingKey) as? Int ?? 0
        self.init(name: name, photo: photo, rating: rating)
    }

    // MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name,   forKey: PropertyKey.nameKey)
        aCoder.encode(photo,  forKey: PropertyKey.photoKey)
        aCoder.encode(rating, forKey: PropertyKey.ratingKey)
    }
}
