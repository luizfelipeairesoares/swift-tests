//
//  Product.swift
//  luiz-soares
//
//  Created by Luiz Aires Soares on 5/8/16.
//  Copyright © 2016 enjoei. All rights reserved.
//

import Foundation

class Product {
    
    var id: String
    var price: Double
    var originalPrice: Double
    var size: Double?
    var discountPercentage: Int
    var condition: String?
    var shippingType: String?
    var title: String
    var content: String?
    var brand: String?
    var likesCount: Int
    var userTitle: String?
    var userCity: String?
    var userState: String?
    var defaultPhoto: NSURL?
    var photos: Array<NSURL>?
    var relatedProducts: Array<Product>?
    
    
    init(id: String,
         price: Double,
         originalPrice: Double,
         size: Double?,
         discountPercentage: Int,
         condition: String?,
         shippingType: String?,
         title: String,
         content: String?,
         brand: String?,
         likesCount: Int,
         userTitle: String?,
         userCity: String?,
         userState: String?,
         defaultPhoto: NSURL?,
         photos: Array<NSURL>?,
         relatedProducts: Array<Product>?) {
        self.id = id
        self.price = price
        self.originalPrice = originalPrice
        self.size = size
        self.discountPercentage = discountPercentage
        self.condition = condition
        self.shippingType = shippingType
        self.title = title
        self.content = content
        self.brand = brand
        self.likesCount = likesCount
        self.userTitle = userTitle
        self.userCity = userCity
        self.userState = userState
        self.defaultPhoto = defaultPhoto
        self.photos = photos
        self.relatedProducts = relatedProducts
    }
}
