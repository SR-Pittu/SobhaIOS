//
//  CreateTaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit
import Lottie

class CreateTaskVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        createTaskBTN.isEnabled = false
    }
    
    @IBOutlet weak var createTaskBTN: UIButton!
   
    @IBAction func createTaskBTN(_ sender: UIButton) {
       let a = self.taskTF.text!
        PendingTasks.tasks.item = [a]
        self.animationView.animation = LottieAnimation.named("added")
        self.animationView.backgroundColor = .clear
        self.animationView.loopMode = .playOnce
        self.animationView.play()
        
    }
   
    @IBOutlet weak var taskTF: UITextField!
    
    @IBOutlet weak var animationView: LottieAnimationView!
    
    @IBAction func readTask(_ sender: UITextField) {
        let a = self.taskTF.text!
        if !(a.isEmpty) == true
        {
            createTaskBTN.isEnabled = true
        }else {
        createTaskBTN.isEnabled = false
        
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
