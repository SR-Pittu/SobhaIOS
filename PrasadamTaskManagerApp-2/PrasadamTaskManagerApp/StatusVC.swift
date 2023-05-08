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

        // Do any additional setup after loading the view.
        canceledTasksLBL.text = "\(cancled.item.count)"
        completedTasksLBL.text  = "\(completed.item.count)"
        pendingTasksLBL.text = "\(pending.item.count)"
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