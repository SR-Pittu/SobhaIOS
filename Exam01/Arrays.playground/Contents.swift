import UIKit


var players : Set<String> = ["David Warner", "Virat Kohli",
"Kane Williamson", "Steve Smith","Mahendra Singh Dohni"]
print(players.count)
print(players)
print(players.contains("Steve Smith"))
players.insert("Maxwell")
print(players)
players.remove("David Warner")
print(players)
var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [1,2,5,9]
var numsList : Set<Int> = [1,2]
var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)
var intersectionSet : Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)
var subtractionSet : Set<Int> = primeNumbers.subtracting(numbersList)
print(subtractionSet)
var symmDiffSet :Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)
print(numsList.isSubset(of: numbersList))
print("----------------------------------")

var numbers:[Int] = [2,3,4]
print(numbers)
var emptyArray = [Int]()
print(emptyArray)
var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])
programmingLanguages[0] = "Java Script"
programmingLanguages.append("Mobile Computing iOS")
print(programmingLanguages)
var names:[String] = ["Oliver", "Elijah", "James"]
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")
print(names.count)
names.sort()
print("After sorting \(names)")
names.reverse()
print("After reversing \(names)")
names.remove(at: 2)
print("After removing \(names)")
names.swapAt(1, 2)
print("After swapping \(names)")
var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
oddNumbers.sort()
print("After combining \(oddNumbers)")
