//
//  student.swift
//  studentApp
//
//  Created by Pittu,Sobhareddy on 4/4/23.
//

import Foundation

struct Student{
    
    var name = ""
    var sid = ""
    var email = ""
    var courses:[Course] = []
    
}
struct Course{
    
    var title = ""
    var sem = ""
    var image = ""
    
}

let s1 = Student(name: "Ashton",sid: "S123",email: "S123@gmail.com",
                 courses: [Course(title:"Mobie Computing",sem:"Spring 2023",image:"Swift"),
                           Course(title:"GDP-1",sem:"Fall 2023",image:"gdp"),
                           Course(title:"Network Security",sem:"Spring 2023",image:"ns")])

let s2 = Student(name: "Harsh", sid: "S135", email: "S135@gmail.com",
                 courses: [Course(title:"Java",sem:"Spring 2022",image:"Java"),
                           Course(title:"GDP-1",sem:"Fall 2023",image:"gdp"),
                           Course(title:"JavaScript",sem:"Summer 2022",image:"JavaScript")])

let s3 = Student(name: "Shiv", sid: "S246", email: "S246@gmail.com",
                 courses: [Course(title:"C++",sem:"Fall 2022",image:"C++"),
                           Course(title:"Data Security",sem:"Spring 2024",image:"ds"),
                           Course(title:"Python",sem:"Spring 2023",image:"Python")])

let s4 = Student(name: "Cherry", sid: "S289", email: "S289@gmail.com",
                 courses: [Course(title:"Mobie Computing",sem:"Spring 2023",image:"Swift"),
                           Course(title:"Data Security",sem:"Spring 2024",image:"ds")])

let s5 = Student(name: "Monnie", sid: "S507", email: "S507@gmail.com",
                 courses: [Course(title:"GDP-1",sem:"Fall 2023",image:"gdp"),
                           Course(title:"Python",sem:"Spring 2023",image:"Python"),
                           Course(title:"JavaScript",sem:"Summer 2022",image:"JavaScript")])


let students = [s1,s2,s3,s4,s5]



