import UIKit

var a = 7.4
var b = 1.8
print("\(a.truncatingRemainder(dividingBy: b))")
var greeting = "Hello, playground😍"
print(greeting)

var marks=85
if marks > 50 {
print("The student  had passed  with  \(marks) marks")
}else{
print("The student had managed to get \(marks) marks")
}


var inputNumber = 10
if inputNumber>0 {
    print("\(inputNumber) is a positive number.")
}
else if (inputNumber<0){
    print("\(inputNumber) is a negative number")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
}else {
    print("The number  is 0")
}

var stars = 95
if(stars>=90) {
print("You are a Pro Member")
}
else if (stars>=78 && stars<90){
print("You are a Gold Member")
}
else if (stars>=65 && stars<78) {
print("You are a VIP Member")
}
else {
print("Default Plan")
}


var password:String="sobha@171"
if(password.count>8){
    if(password.contains(" ")){
       print("Password Should not contain space")
    }
    else{
    print("Password is Strong")
    }
}
else
{
   print("A password should be minimum of 8 characters")
   }


var male:Bool=true
var age = 45
if male {
    if age<20 {
        print("BOY")
    }else {
        print("MAN")
    }
}else{
    if age<20{
        print("Girl")
     }else{
         print("Woman")
     }
 }



let alphabet:Character="B"
switch alphabet {
case "a","A":
print("It is alphabet a or A")
case "b":
print("It is lower alphabet b")
case "B":
    print("It is a upper case alphabet B")
case "C":
print("It is upper case alphabet C")
default:
print("None of the cases are executed above")
}


let isVowel:Character="z"
switch isVowel {
case "a","e","i","o","u":
print("The alphabet is a lower case vowel")
case "A","E","I","O","U":
    print("The alphabet is an upper case vowel")
default:
print("The alphabet is a consonant")
}

var isHot = 50
switch isHot {
case 60...95:
print("It's really warm. Don't forget to wearsunscreen.")
case 35...60:
    print("It's not that cold. Wear a t-shirt.")
case 0..<35:
    print("It's very cold. Consider wearing a scarf.")
default:
print("The temperature is Unbearable")
}

var x:Int=3
var y:Int=4
var z:Int=5
switch x {
    case 2:
        print("\(z) ~",terminator:"~ ")
    case 3:
        print("\(x) ~",terminator:"~ ")
        switch y {
            case 3:
                print("\(x) ~",terminator:"~ ")
            case 4:
                print("\(y) ~",terminator:"~ ")
                switch z {
                    case 5:
                        print("\(z) ~",terminator:"~ ")
                    case 4:
                        print("\(y) ~",terminator:"~ ")
                    default:
                         print("No Matching case found")
                }
            default:
                print("No Matching Case  found")
        }
    default:
        print("No number is matching")
}
print()

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

print("\(fact.count)")
fact += ", it has a better memory management"
print("\(fact)")
dev.append(" by Apple")
print("\(dev)")
print("\(author.lowercased())")
print("\(author.uppercased())")
print("\(author[author.startIndex])")
print("\(author[author.index(before: author.endIndex)])")
print("\(dev[dev.startIndex])")
print("\(dev[dev.index(before: dev.endIndex)])")
print("\(author[author.index(after: author.startIndex)])")
print("\(author[author.index(author.startIndex,offsetBy: 10)])")
print("\(author[author.index(author.endIndex,offsetBy: -5)])")
print("\(fact[fact.index(fact.endIndex,offsetBy: -4)])")
print("\(dev[dev.index(dev.endIndex, offsetBy: -7)])")
print("\(fact[fact.index(fact.startIndex, offsetBy: 8)])")
print("\(author[author.index(author.endIndex, offsetBy: -11)])")
print("\(dev[dev.index(dev.startIndex, offsetBy: 12)])")


var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

print(foodItems.split(separator: " "))
foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]
shoppingList +=
foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]
print("\(shoppingList)")
print("\(clothes.remove(at: clothes.firstIndex(of: "T")!))")
clothes.remove(at: clothes.firstIndex(of: "-")!)
print("\(shoppingList), \(clothes)")
clothes.insert(contentsOf: ", Trousers", at:clothes.endIndex)
print("\(clothes)")
var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])


var course = "44643-Mobile Computing-iOS"

print("\(course[course.startIndex..<course.index(course.startIndex, offsetBy: 5)])")
var cx = course.index(after: course.firstIndex(of: "3")!)
print("\(course[..<cx])")

var c1 = course.index(after: course.firstIndex(of: "3")!)
print("\(course[course.index(course.endIndex, offsetBy: -20)...course.index(before: course.endIndex)])")
print("\(course[course.index(course.endIndex, offsetBy: -20)...course.index(course.startIndex, offsetBy:12)])")
var c2 = course.firstIndex(of: " ")



func greetUser(){
    print("Welcome User")
}

greetUser()


func sayHello()->String{
    let name="Swift"
    return "Hello "+name+"!"
}
print(sayHello())


func favoriteProgram(name:String)->String {
    let name="My favorite programming language is \(name) 🙂!"
    return name
}
print(favoriteProgram(name:"Swift"))

func addNumbers(number1:Int,number2:Int)->Int{
return number1+number2
}
print("The sum of given numbers is \(addNumbers(number1:109, number2: 289))")

func passwordCheck(sid userName: String, password : String)->Bool{
    if(userName=="S555600"&&password=="Sobha123"){
        return true
    }
    return false
}
let c = passwordCheck(sid: "S555600", password: "Sobha123")
if(c){
    print("Logged in successfully")
}
else{
    print("login failed")
}


func stats(_ numbers:Double...)->(sum:Double,avg:Double,max:Double,min:Double){
   var total:Double=0
   var avg:Double
    var max:Double=0
    var min:Double=0
   
   for number in numbers {
       total+=number
   }
    max = numbers.first ?? 0.0
    min = numbers.first ?? 0.0
   avg=total/Double(numbers.count)
    for i in numbers{
        if(max<i){
            max = i
        }
        if(min>i){
            min = i
        }
    }
   
   return (total,avg,max,min)
}
 
let result=stats(1,20.5,0.5,4.9,10)
 
print("Sum = \(result.sum)")
print("Average = \(result.avg)")
print("Average = \(result.max)")
print("Average = \(result.min)")


func calculate(symbol: String) -> (Int, Int) -> Int {
    
    // inner function to add two numbers
    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    // inner function to subtract two numbers
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
    }
    
    func multiply(num1:Int, num2:Int) -> Int {
        return num1 * num2
    }
    
    func division(num1:Int, num2:Int) -> Int {
        return num1 / num2
    }
    
    func modulus(num1:Int, num2:Int) -> Int {
        return num1 % num2
    }
    
    let operation = (symbol == "+") ?  add : ((symbol=="-") ? subtract : ((symbol=="*") ? multiply :((symbol=="/") ? division : modulus)))
    return operation
}
let operation = calculate(symbol: "*")
print("\(operation(45, 10))")


func nextLeapYear(_ year:inout Int)->Int {
     year+=1
     if ((year % 4 == 0) && (year % 100 != 0)) ||
        (year % 400 == 0){
        return year
    }
    else{
        nextLeapYear(&year)
    }
    return year;
}
var year=1999
print("Upcoming leap year is: \(nextLeapYear(&year))")


func fullName(_ firstName:String,_ lastName:String)->String{
    return lastName+","+firstName
}
print(fullName("YoonGi","Min"))
