import UIKit


var capital = ["Arkansas":"LittleRock","Georgia":"Atlanta","New Jersey":"Trenton","California":" Sacramento"]
print(capital)
print(capital.count)

var numbers = [1:"One",2:"two",3:"Three"]
print(numbers)
numbers[2]="TWO"
numbers[45] = "Four"
print(numbers)


var courses = [44542:"Java", 44560:"Database", 44613:"Data Visualization"]

print("Before changing \(courses)")
courses[44542] = "Java Script"
print("After Changing \(courses)")


print(courses[44542]!)


courses.removeValue(forKey: 44613)
print(courses)


for (key,values) in courses{
    let removedValue = courses.removeValue(forKey: key)
   print("\(removedValue) \(values)")
}
print(courses)


for(key, values ) in courses{
    if(key%2 == 0){
   print(values)
    }
    else{
        print(key)
    }
   }

   
for (key,values) in courses
     {
    print("\(key) : \(values);")
   }

   
print("---------------------------------")

var players : Set<String> = ["David Warner", "Virat Kohli",
"Kane Williamson", "Steve Smith","Mahendra Singh Dhoni","Sachin Tendulkar"]
print(players.count)
print(players)


print(players.contains("abc"))

players.insert("Maxwell")
print(players)

players.remove("David Warner")
print(players)



var primeNumbers : Set<Int> = [2,3,5,7,11,13]
var numbersList : Set<Int> = [1,2,3,5,9,6]
var num : Set<Int> = [1,2,3]

var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)

var intersectionSet : Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)

var subtractionSet : Set<Int> =
numbersList.subtracting(primeNumbers)
print(subtractionSet)

var symmDiffSet :Set<Int> =
numbersList.symmetricDifference(primeNumbers)
print(symmDiffSet)

var sss : Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(sss)

print(num.isSubset(of: numbersList))
print(numbersList.isSuperset(of: num))
print(primeNumbers.isDisjoint(with: subtractionSet))


print("--------------------------------------------")


var numbes:[Int] = [2,3,4]
print(numbes)
     
var emptyArray = [Int]()
print(emptyArray)
emptyArray.append(6)
print(emptyArray)


var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

programmingLanguages[0] = "Java Script"
print(programmingLanguages[0])

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
print("After combining \(oddNumbers)")
