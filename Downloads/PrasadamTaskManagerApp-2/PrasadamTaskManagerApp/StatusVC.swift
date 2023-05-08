//
//  StatusVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit

class StatusVC: UIViewController {
    var cancled = CanceledTasks.tasks
    var completed = CompletedTasks.tasks
    var pending = PendingTasks.tasks
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        self.reloadInputViews()
        print("\(PendingTasks.tasks.item)")
        // Do any additional setup after loading the view.
        canceledTasksLBL.text = "\(CanceledTasks.tasks.item.count)"
        completedTasksLBL.text  = "\(CompletedTasks.tasks.item.count)"
        pendingTasksLBL.text = "\(PendingTasks.tasks.item.count)"
    }
  
    @IBOutlet weak var canceledTasksLBL: UILabel!
    @IBOutlet weak var completedTasksLBL: UILabel!
    
    @IBOutlet weak var pendingTasksLBL: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
