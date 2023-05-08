//
//  CreateTaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit
import Lottie

class CreateTaskVC: UIViewController {

    var destcancled = CanceledTasks.tasks
    var destcompleted = CompletedTasks.tasks
    var destpending = PendingTasks.tasks
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        createTaskBTN.isEnabled = false
    }
    @IBOutlet weak var createTaskBTN: UIButton!
    
    @IBAction func createTask(_ sender: UIButton) {
        var a = taskTF.text!
        PendingTasks.tasks.item.append(a)
        
    }
    @IBAction func createTaskBTN(_ sender: UIButton) {
        //LottieAnimation.
    }
    @IBOutlet weak var taskTF: UITextField!
    
 //   @IBOutlet weak var animationView: animationView!
    
    
    @IBAction func readTask(_ sender: UITextField) {
        let a = self.taskTF.text!
        if !(a.isEmpty) == true
        {
            createTaskBTN.isEnabled = true
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
