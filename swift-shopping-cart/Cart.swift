//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items:[Item] = []
    
    func totalPriceInCents()->Int{
        var totalPrice:Int = 0
        
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func add(item:Item){
        items.append(item)
    }
    
    func remove(item:Item){
        for (index, itm) in items.enumerated() {
            if itm == item {
                items.remove(at: index)
            }
        }
    }
    
    func items(withName name:String)->[Item]{
        var namesMatchedArray:[Item] = []
        for item in items {
            if item.name == name {
                namesMatchedArray.append(item)
            }
        }
        return namesMatchedArray
    }
    
    func items(withMinPrice price:Int)->[Item]{
        var minPriceArray:[Item] = []
        for item in items {
            if item.priceInCents >= price {
                minPriceArray.append(item)
            }
        }
        return minPriceArray
    }
    
    func items(withMaxPrice price:Int) ->[Item]{
        var maxPriceArray:[Item] = []
        for item in items {
            if item.priceInCents <= price {
                maxPriceArray.append(item)
            }
        }
        return maxPriceArray
    }
    
}
    


