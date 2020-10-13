//
//  dataFile.swift
//  UIC_Clothing_App
//
//  Created by ODM on 10/11/20.
//

import Foundation

struct DataModel {
    
    var id = UUID()
    var image : String
    var itemName: String
    var price : String
    var size: String
    var qunatity: String
    
}

var dummyData = [

    DataModel(image: "image1", itemName: "Blue Apron", price: "20", size: "L", qunatity: "4"),
    DataModel(image: "image2", itemName: "Blue Jeans", price: "17.99", size: "M", qunatity: "2"),
    DataModel(image: "image5", itemName: "Red Womens Coat two sided", price: "89.89", size: "M", qunatity: "1"),
    DataModel(image: "image6", itemName: "Multicolored crop top", price: "49.99", size: "4", qunatity: "2"),
    DataModel(image: "image7", itemName: "Mustard Yello Coat with Belt", price: "199", size: "2", qunatity: "1"),
    DataModel(image: "image9", itemName: "Galaxy Milticolored Coat", price: "250", size: "L", qunatity: "2"),
    DataModel(image: "image10", itemName: "Star Hoodie", price: "70", size: "M", qunatity: "3")
    
]
