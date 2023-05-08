//
//  StudentInfoViewController.swift
//  studentApp
//
//  Created by Pittu,Sobhareddy on 4/4/23.
//

import UIKit

class StudentInfoViewController: UIViewController {

    
    var studentObj = Student()
        
    var guestUser:Bool = false
    
    @IBOutlet weak var SIDOt: UILabel!
    
    @IBOutlet weak var emailOt: UILabel!
    
    @IBOutlet weak var nameOt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if guestUser {
//                  //if the user is guest we will hide all the outlets and display 'Guest User'
//                  emailOt.isHidden = true
//                  nameOt.text = "Name: Guest User"
//                  SIDOt.isHidden = true
//                //  courseOutlet.isHidden = true
//
//              }else{
                  
                  //If the student is found, then we assign the values of the studentObj to the outelts
                  SIDOt.text = "SID: " + studentObj.sid
                  print("\(studentObj.sid)")
                  emailOt.text = "Email: " + studentObj.email
                  nameOt.text = "Name: " + studentObj.name
            //  }
              
          }
          
          override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              let transition = segue.identifier
              
              //We need to view courses of the logged in student in CourseViewController,
              // So we pass the courses from the 'studentObj' variable
              if transition == "courseSegue" {
                  let destination = segue.destination as! CourseViewController
                  
                  //we will assign the courses to 'courseArray' in the CourseViewController
                 // destination.coursesArray = studentObj.courses
              }
          }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
