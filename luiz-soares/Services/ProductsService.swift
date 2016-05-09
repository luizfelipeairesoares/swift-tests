//
//  ProductsService.swift
//  luiz-soares
//
//  Created by Luiz Aires Soares on 5/8/16.
//  Copyright © 2016 enjoei. All rights reserved.
//

import Foundation

class ProductsService {
    
    func getProductList() -> Array<Product> {
        var rProducts = Array<Product>()
        let path = NSBundle.mainBundle().URLForResource("products", withExtension: "json")
        let data = NSData(contentsOfURL: path!)
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            if let products = json["products"] as? [[String: AnyObject]] {
                for product in products {
                    guard let discount_percentage = product["discount_percentage"] as? Int,
                        let id = product["id"] as? Int,
                        let originalPrice = product["original_price"] as? Double,
                        let price = product["price"] as? Double,
                        let title = product["title"] as? String,
                        let content = product["content"] as? String,
                        let likesCount = product["likes_count"] as? Int,
                        let photo = product["default_photo"] as? NSString else {
                            break
                    }
                    let photoURL = NSURL(fileURLWithPath: photo as String)
                    let p: Product = Product(id: String(id),
                                             price: price,
                                             originalPrice: originalPrice,
                                             size: nil,
                                             discountPercentage: discount_percentage,
                                             condition: nil,
                                             shippingType: nil,
                                             title: title,
                                             content: content,
                                             brand: nil,
                                             likesCount: likesCount,
                                             userTitle: nil,
                                             userCity: nil,
                                             userState: nil,
                                             defaultPhoto: photoURL,
                                             photos: nil,
                                             relatedProducts: nil)
                    rProducts.insert(p, atIndex: rProducts.count)
                }
            }
        } catch {
            return Array<Product>()
        }
        return rProducts
    }    
}
