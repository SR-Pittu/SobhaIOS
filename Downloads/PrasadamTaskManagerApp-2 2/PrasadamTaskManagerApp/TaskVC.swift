//
//  TaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit

class TaskVC: UIViewController, UITableViewDataSource , UITableViewDelegate{
    var task = [PendingTasks]()
    var task1 = [CompletedTasks]()
    var task2 = [CanceledTasks]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return task.count
        }
        if section == 1
        {
            return task1.count
        }
        if section == 2
        {
        return  task2.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 0 {
        cell.textLabel?.text = PendingTasks.tasks.item[indexPath.row]
        return cell
        }
        if indexPath.section == 1 {
            cell.textLabel?.text = CompletedTasks.tasks.item[indexPath.row]
            return cell
        }
        if indexPath.section == 2 {
            cell.textLabel?.text = PendingTasks.tasks.item[indexPath.row]
            return cell
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Completed"
        }
        if section == 1
        {
            return "Pending"
        }
        if section == 2 {
        return "Canceled"
        }
        return nil
}
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasksTableView.dataSource = self
        tasksTableView.delegate = self
    }
    
    @IBOutlet weak var tasksTableView: UITableView!
    
  
   

}
