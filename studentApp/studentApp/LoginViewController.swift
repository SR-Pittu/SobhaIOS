//
//  ViewController.swift
//  studentApp
//
//  Created by Pittu,Sobhareddy on 4/4/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //creating a global variable for holding a student
        var studentFound = Student()
        
        //to check whether user is student/guest
        //Initially isStudent is false that means user is a guest
        var isStudent = false
        
        //Array of type Student, we imported it from the 'Student' file
    var studentsArray = students

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        InfoBtn.isHidden = true
        
    }
    @IBOutlet weak var txt: UITextField!
    
    @IBAction func TextField(_ sender: Any) {
        
        let  a = txt.text!
        txt.text = a.uppercased()
    
        if(txt.text!.isEmpty){
            InfoBtn.isHidden = true
        }
        else{
            InfoBtn.isHidden = false
        }
    }
    
    
    
    @IBAction func studentInfoBTN(_ sender: UIButton) {
        //value of the textField
        let enteredID = txt.text!.uppercased()
               
               //Loop the array to find the student
               for student in studentsArray {
                   print("\(student.sid) \(enteredID)")
                   if student.sid == enteredID{
                       //student found and store the student in a global variable.
                       print("\(student.sid) \(enteredID)")
                       studentFound = student
                       //boolean flag as true,since we found a student.
                       isStudent = true
                       
                       
                   }
                   print("\(isStudent)")
               }
    }
    
    
    @IBOutlet weak var InfoBtn: UIButton!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "StudentInfoSegue" {
                //Create a destination of type studentInfoViewController
                let destination = segue.destination as! StudentInfoViewController
                
                //if student is exists in the array, we will assign the studentObj in the destination with "studentFound"
                    destination.studentObj = studentFound
                
                
                
            }
//        if(transition=="GuestSegue"){
//            let destination = segue.destination as! GuestViewController
//            destination.str = "Guest User"
//        }
    
   }

}
