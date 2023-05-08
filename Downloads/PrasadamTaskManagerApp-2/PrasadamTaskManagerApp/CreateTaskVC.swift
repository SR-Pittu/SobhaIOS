//
//  CreateTaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit
import Lottie
protocol CreateTaskDelegate: AnyObject {
    func didCreateTask(_ task: String)
}


class CreateTaskVC: UIViewController {
    
    func didCreateTask(_ task: String) {
        let a = self.taskTF.text!
        PendingTasks.tasks.item.append(a)
    }
    var pendingTasks = PendingTasks.tasks
        var completedTasks = [CompletedTasks]()
        var canceledTasks = [CanceledTasks]()

   weak var delegate: CreateTaskDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
      

        createTaskBTN.isEnabled = false
       

    }
    
    @IBOutlet weak var createTaskBTN: UIButton!
   
    @IBAction func createTaskBTN(_ sender: UIButton) {
        let a = self.taskTF.text!
        PendingTasks.tasks.item.append(a)
        print("\(PendingTasks.tasks.item)")
        self.animationView.animation = LottieAnimation.named("added")
        self.animationView.backgroundColor = .clear
        self.animationView.loopMode = .playOnce
        self.animationView.play()
       // delegate?.taskCreated(taskName: a)
       // self.animationView.play(completion: .flatMap(T##self: Optional<LottieCompletionBlock>##Optional<LottieCompletionBlock>##(Bool) -> Void))
        self.animationView.play(completion: { (finished) in
            self.dismiss(animated: true)
            //TaskVC.viewWillAppear(self.delegate as! TaskVC)
            })
     
        
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
