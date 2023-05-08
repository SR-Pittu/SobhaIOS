//
//  Grocery.swift
//  GroceryAppProject
//
//  Created by Pittu,Sobhareddy on 4/19/23.
//

import Foundation
import UIKit

struct Grocery{
    var category = ""
    var img = ""
    var items:[Items] = []
}

struct Items{
    var itemName = ""
    var itemdetails = ""
    var itemQuantity = ""
    var itemImage = ""
    var price = ""
}

let g1 = Grocery(category: "Vegtables", img: "1",items: [
    Items(itemName: "Spinach", itemdetails: " Spinach also boasts antioxidants, which may help reduce your risk of disease.vitamin K", itemQuantity: "25",itemImage: "v1",price: "1.99"),
    Items(itemName: "Carrots",itemdetails: "At least 2–4 carrots per week with a 17% lower risk of colorectal cancer in the long run ",itemQuantity: "35",itemImage: "v2",price: "3.99"),
    Items(itemName: "Broccoli",itemdetails: "broccoli provides 77% of the DV for vitamin K, 90% of the DV for vitamin C",itemQuantity: "15",itemImage: "v3",price: "5.99"),
    Items(itemName: " Beets",itemdetails: "Beet juice may help lower blood pressure levels.",itemQuantity: "40",itemImage: "v4",price: "4.99"),
    Items(itemName: "Cauliflower",itemdetails: "Cauliflower is also often used as a low carb, low calorie alternative to ingredients like rice, potatoes, and flour.",itemQuantity: "30",itemImage: "v5",price: "2.99")])

let g2 = Grocery(category: "Meat",img: "2", items: [
    Items(itemName: "Chicken",itemdetails: "chicken can help with weight management and reduce the risk of heart disease",itemQuantity: "100",itemImage: "m1",price: "13.99"),
    Items(itemName: "Goat",itemdetails: "Goat meat also has lower levels of cholesterol compared to other meats.",itemQuantity: "100",itemImage: "m2",price: "12.69"),
    Items(itemName: "Pork",itemdetails: "Pork is a source of zinc, selenium and vitamins B12 and B6 that help the immune system to work normally.",itemQuantity: "100",itemImage: "m3",price: "10.99"),
    Items(itemName: "Beef",itemdetails: "Beef is high in protein and helps build muscle mass.",itemQuantity: "100",itemImage: "m4",price: "9.99"),
    Items(itemName: "Turkey",itemdetails: "turkey is a lean meat and a good choice for those looking to reduce their fat intake.",itemQuantity: "100",itemImage: "m5",price: "8.99")])

let g3 = Grocery(category: "Sea Food", img: "3",items:  [Items(itemName: "Shrimp",itemdetails: "Eating shrimp may also promote heart and brain health due to its content of omega-3 fatty acids and the antioxidant astaxanthin.",itemQuantity: "100",itemImage: "s1"),Items(itemName: "Fish",itemdetails: "Fish is a low-fat high quality protein. Fish is filled with omega-3 fatty acids and vitamins such as D and B2 (riboflavin).",itemQuantity: "100",itemImage: "s2"),Items(itemName: "Crab",itemdetails: "Crab meat or crab marrow is the meat found within a crab, or more specifically, the leg of a crab.",itemQuantity: "10",itemImage: "s3"), Items(itemName: "Prawns",itemdetails: "Prawns are a rich source of selenium, one of the most effective antioxidants at maintaining healthy cells.",itemQuantity: "10",itemImage: "s4"),Items(itemName: "Oyster",itemdetails: "Oyster is the common name for a number of different families of salt-water bivalve molluscs that live in marine or brackish habitats.",itemQuantity: "10",itemImage: "s5")])

let g4 = Grocery(category: "Dairy Products", img: "4",items: [
    Items(itemName: "Milk", itemdetails: "Whole milk, 1L", itemQuantity: "2", itemImage: "d1",price: "3.99"),
    Items(itemName: "Yogurt", itemdetails: "Greek yogurt, 500g", itemQuantity: "3", itemImage: "d2",price: "3.99"),
    Items(itemName: "Cheese", itemdetails: "Cheddar cheese, 500g", itemQuantity: "1", itemImage: "d3",price: "3.99"),
    Items(itemName: "Butter", itemdetails: "Unsalted butter, 250g", itemQuantity: "2", itemImage: "d4",price: "3.99"),
    Items(itemName: "Cream", itemdetails: "Heavy cream, 500ml", itemQuantity: "1", itemImage: "d5",price: "3.99")
])

let g5 = Grocery(category: "Frozen",img: "5", items: [
    Items(itemName: "Frozen Vegetables", itemdetails: "Mixed vegetables, 1kg", itemQuantity: "2 bags", itemImage: "fz1",price: "3.99"),
    Items(itemName: "Frozen Pizza", itemdetails: "Pepperoni pizza, 12 inches", itemQuantity: "3", itemImage: "fz2",price: "3.99"),
    Items(itemName: "Ice Cream", itemdetails: "Vanilla ice cream, 1.5L", itemQuantity: "2 tubs", itemImage: "fz3",price: "3.99"),
    Items(itemName: "Frozen Chicken", itemdetails: "Boneless chicken breast, 2kg", itemQuantity: "1 bag", itemImage: "fz4",price: "3.99"),
    Items(itemName: "Frozen Fruit", itemdetails: "Mixed berries, 500g", itemQuantity: "3 bags", itemImage: "fz5",price: "3.99")
])

let g6 = Grocery(category: "Instant", img: "6",items: [
    Items(itemName: "Instant Noodles", itemdetails: "Chicken flavor, 5 packs", itemQuantity: "2 boxes", itemImage: "i1",price: "3.99"),
    Items(itemName: "Instant Coffee", itemdetails: "Dark roast, 200g", itemQuantity: "1 jar", itemImage: "i2",price: "3.99"),
    Items(itemName: "Instant Soup", itemdetails: "Tomato soup, 4 packs", itemQuantity: "1 box", itemImage: "i3",price: "3.99"),
    Items(itemName: "Instant Oatmeal", itemdetails: "Maple and brown sugar flavor, 10 packs", itemQuantity: "2 boxes", itemImage: "i4",price: "3.99"),
    Items(itemName: "Instant Mashed Potatoes", itemdetails: "Garlic flavor, 4 servings", itemQuantity: "3 packs", itemImage: "i5",price: "3.99")
])

let g7 = Grocery(category: "Dry Goods",img: "7", items: [
    Items(itemName: "Pasta", itemdetails: "Spaghetti, 1kg", itemQuantity: "2 bags", itemImage: "g1",price: "3.99"),
    Items(itemName: "Rice", itemdetails: "Long grain, 2kg", itemQuantity: "1 bag", itemImage: "g2",price: "3.99"),
    Items(itemName: "Canned Beans", itemdetails: "Black beans, 400g", itemQuantity: "3 cans", itemImage: "g3",price: "3.99"),
    Items(itemName: "Flour", itemdetails: "All-purpose, 1kg", itemQuantity: "2 bags", itemImage: "g4",price: "3.99"),
    Items(itemName: "Sugar", itemdetails: "Granulated, 1kg", itemQuantity: "1 bag", itemImage: "g5",price: "3.99")
])

let g8 = Grocery(category: "Seasoning",img: "8", items: [
    Items(itemName: "Salt", itemdetails: "Fine sea salt, 500g", itemQuantity: "1 container", itemImage: "ss1",price: "3.99"),
    Items(itemName: "Pepper", itemdetails: "Black peppercorns, 50g", itemQuantity: "1 container", itemImage: "ss2",price: "3.99"),
    Items(itemName: "Garlic Powder", itemdetails: "1 jar", itemQuantity: "1 jar", itemImage: "ss3",price: "3.99"),
    Items(itemName: "Onion Powder", itemdetails: "1 jar", itemQuantity: "1 jar", itemImage: "ss4",price: "3.99"),
    Items(itemName: "Italian Seasoning", itemdetails: "Basil, oregano, rosemary, thyme, 50g", itemQuantity: "1 jar", itemImage: "ss5",price: "3.99")
])

let g9 = Grocery(category: "Beverages", img: "9",items: [
    Items(itemName: "Coffee", itemdetails: "Ground coffee, medium roast, 500g", itemQuantity: "1 bag", itemImage: "b1",price: "3.99"),
    Items(itemName: "Tea", itemdetails: "Assorted tea bags, 50-count", itemQuantity: "1 box", itemImage: "b2",price: "3.99"),
    Items(itemName: "Milk", itemdetails: "Whole milk, 1 liter", itemQuantity: "1 carton", itemImage: "b3",price: "3.99"),
    Items(itemName: "Orange Juice", itemdetails: "No pulp, 1 liter", itemQuantity: "1 carton", itemImage: "b4",price: "3.99"),
    Items(itemName: "Soda", itemdetails: "Assorted flavors, 12-pack", itemQuantity: "1 pack", itemImage: "b5",price: "3.99")
])


let g10 = Grocery(category: "Canned",img: "10", items: [
    Items(itemName: "Tomato Sauce", itemdetails: "No salt added, 24 oz can", itemQuantity: "2 cans", itemImage: "t1",price: "3.99"),
    Items(itemName: "Canned Tuna", itemdetails: "Chunk light in water, 5 oz can", itemQuantity: "4 cans", itemImage: "t2",price: "3.99"),
    Items(itemName: "Chickpeas", itemdetails: "Low sodium, 15 oz can", itemQuantity: "2 cans", itemImage: "t3",price: "3.99"),
    Items(itemName: "Corn", itemdetails: "Sweet corn, 15.25 oz can", itemQuantity: "2 cans", itemImage: "t4",price: "3.99"),
    Items(itemName: "Green Beans", itemdetails: "No salt added, 14.5 oz can", itemQuantity: "2 cans", itemImage: "t5",price: "3.99")
])

let g11 = Grocery(category: "Fruits",img: "11", items: [
    Items(itemName: "Apples", itemdetails: "Red Delicious", itemQuantity: "1 lb", itemImage: "f1",price: "3.99"),
    Items(itemName: "Bananas", itemdetails: "Cavendish", itemQuantity: "1 bunch", itemImage: "f2",price: "3.99"),
    Items(itemName: "Grapes", itemdetails: "Red Seedless", itemQuantity: "1 lb", itemImage: "f3",price: "3.99"),
    Items(itemName: "Oranges", itemdetails: "Navel", itemQuantity: "1 lb", itemImage: "f4",price: "3.99"),
    Items(itemName: "Strawberries", itemdetails: "Fresh", itemQuantity: "1 lb", itemImage: "f5",price: "3.99")
])


let g12 = Grocery(category: "Bakery", img: "12",items: [
    Items(itemName: "White Bread", itemdetails: "Loaf of white bread", itemQuantity: "1", itemImage: "w1",price: "3.99"),
    Items(itemName: "Whole Wheat Bread", itemdetails: "Loaf of whole wheat bread", itemQuantity: "1", itemImage: "w2",price: "3.99"),
    Items(itemName: "Bagels", itemdetails: "Pack of bagels", itemQuantity: "6", itemImage: "w3",price: "3.99"),
    Items(itemName: "Muffins", itemdetails: "Pack of assorted muffins", itemQuantity: "6", itemImage: "w4",price: "3.99"),
    Items(itemName: "Croissants", itemdetails: "Pack of croissants", itemQuantity: "6", itemImage: "w5",price: "3.99")
])

let g13 = Grocery(category: "Household", img: "13",items: [
    Items(itemName: "Toilet Paper", itemdetails: "Soft, 2-ply, pack of 12", itemQuantity: "1", itemImage: "l1",price: "3.99"),
    Items(itemName: "Dish Soap", itemdetails: "Lemon-scented, 24 oz bottle", itemQuantity: "1", itemImage: "l2",price: "3.99"),
    Items(itemName: "Laundry Detergent", itemdetails: "Free and clear, 64 oz bottle", itemQuantity: "1", itemImage: "l3",price: "3.99"),
    Items(itemName: "Trash Bags", itemdetails: "Large, black, pack of 30", itemQuantity: "1", itemImage: "l4",price: "3.99"),
    Items(itemName: "Batteries", itemdetails: "AA, pack of 8", itemQuantity: "1", itemImage: "l5",price: "3.99")
])


let g14 = Grocery(category: "Snacks", img: "14",items: [
    Items(itemName: "Potato Chips", itemdetails: "Classic salted potato chips", itemQuantity: "1 bag", itemImage: "p1",price: "3.99"),
    Items(itemName: "Popcorn", itemdetails: "Movie-style popcorn", itemQuantity: "1 bag", itemImage: "p2",price: "3.99"),
    Items(itemName: "Chocolate Bar", itemdetails: "Milk chocolate bar", itemQuantity: "1 bar", itemImage: "p3",price: "3.99"),
    Items(itemName: "Trail Mix", itemdetails: "Assorted nuts and dried fruit", itemQuantity: "1 bag", itemImage: "p4",price: "3.99"),
    Items(itemName: "Pretzels", itemdetails: "Salted pretzels", itemQuantity: "1 bag", itemImage: "p5",price: "3.99")
])


let g15 = Grocery(category: "Spreads", img: "15",items: [
    Items(itemName: "Peanut Butter", itemdetails: "Smooth", itemQuantity: "1 jar", itemImage: "n1",price: "3.99"),
    Items(itemName: "Nutella", itemdetails: "Hazelnut spread", itemQuantity: "1 jar", itemImage: "n2",price: "3.99"),
    Items(itemName: "Jam", itemdetails: "Strawberry", itemQuantity: "1 jar", itemImage: "n3",price: "3.99"),
    Items(itemName: "Honey", itemdetails: "Pure natural honey", itemQuantity: "1 bottle", itemImage: "n4",price: "3.99"),
    Items(itemName: "Butter", itemdetails: "Unsalted", itemQuantity: "1 pack", itemImage: "n5",price: "3.99")
])


let g16 = Grocery(category: "Alcohol", img: "16",items: [
    Items(itemName: "Red Wine", itemdetails: "Cabernet Sauvignon", itemQuantity: "1 bottle", itemImage: "r1",price: "3.99"),
    Items(itemName: "White Wine", itemdetails: "Chardonnay", itemQuantity: "1 bottle", itemImage: "r2",price: "3.99"),
    Items(itemName: "Beer", itemdetails: "Craft IPA", itemQuantity: "6 cans", itemImage: "r3",price: "3.99"),
    Items(itemName: "Whiskey", itemdetails: "Scotch", itemQuantity: "1 bottle", itemImage: "r4",price: "3.99"),
    Items(itemName: "Vodka", itemdetails: "Premium", itemQuantity: "1 bottle", itemImage: "r5",price: "3.99")
])

let g17 = Grocery(category: "Baby Food", img: "17",items: [
    Items(itemName: "Organic Pureed Sweet Potato", itemdetails: "Stage 1", itemQuantity: "1 jar", itemImage: "j1",price: "3.99"),
    Items(itemName: "Organic Pureed Green Beans", itemdetails: "Stage 1", itemQuantity: "1 jar", itemImage: "j2",price: "3.99"),
    Items(itemName: "Organic Rice Cereal", itemdetails: "Stage 1", itemQuantity: "1 box", itemImage: "j3",price: "3.99"),
    Items(itemName: "Organic Puffs", itemdetails: "Blueberry flavor", itemQuantity: "1 container", itemImage: "j4",price: "3.99"),
    Items(itemName: "Organic Yogurt Melts", itemdetails: "Mixed berry flavor", itemQuantity: "1 bag", itemImage: "j5",price: "3.99")
])


let grooceriesArray = [g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16,g17]

var cartItems:[Items] = []

var wishList:[Items] = []


