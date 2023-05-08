//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Pittu,Sobhareddy on 3/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var courseNumber: UILabel!
    
    
    @IBOutlet weak var courseTitle: UILabel!
    
    
    @IBOutlet weak var semesterOffered: UILabel!
    
    let courses = [["img01", "44555","Network Security","Fall 2022"],
                   ["img02", "44643","iOS","Spring 2023"],
                   ["img03", "44656","Streaming Data","Summer 2023"]]
    var imgNum = 0
    
    @IBOutlet weak var prevBtn: UIButton!
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //need to update the details of first course. Disable previous button and enable next button
        
        UpdateCourse(imgNum)
        
        prevBtn.isEnabled = false
        nextBtn.isEnabled = true
    }

    @IBOutlet weak var ImageDisplay: UIImageView!
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        
        //increment imgNum
        
        imgNum+=1
        
        //update the next course details
        
        UpdateCourse(imgNum)
        
        //previous button should be disabled

        prevBtn.isEnabled = true

        //if we reach end of the array then next button should be disabled.
        
        if (imgNum==(courses.count-1)){
            nextBtn.isEnabled = false
        }
        
      
        
        
        
    }
    
    @IBAction func prvsBtnClicked(_ sender: Any) {
        
        //decrement imgNum
        
        imgNum-=1
        
        //update the previious course details
       
        UpdateCourse(imgNum)
       
        //next button should be disabled

        nextBtn.isEnabled = true

        //if we are at the start of the array then previous button should be disabled.
        
        if (imgNum==0){
            prevBtn.isEnabled = false
        }
    }
    func UpdateCourse(_ imageNumber:Int){
        ImageDisplay.image = UIImage(named: courses[imgNum][0])
        
        courseNumber.text = courses[imgNum][1]
        
        courseTitle.text = courses[imgNum][2]
        
        semesterOffered.text = courses[imgNum][3]
        
    }
    
}

