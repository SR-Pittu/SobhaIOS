//
//  TaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit

class TaskVC: UIViewController, UITableViewDataSource , UITableViewDelegate{
    var task = [TaskList]()
    var cancled = CanceledTasks.tasks
    var completed = CompletedTasks.tasks
    var pending = PendingTasks.tasks
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return task.count
        } else if section == 1
        {
            return pending.item.count
        }
        else{
        return  cancled.item.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
        if indexPath.section == 0
        {
            cell.textLabel?.text = (completed.item[indexPath.row])
            return cell
        }
        else if indexPath.section==1{
            cell.textLabel?.text = (pending.item[indexPath.row])
            return cell
        }
        else{
            cell.textLabel?.text = (cancled.item[indexPath.row])
        return cell
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Completed"
        } else if section == 1
        {
            return "Pending"
        }
        else{
        return "Canceled"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasksTableView.dataSource = self
        tasksTableView.delegate = self
    }
    
    @IBOutlet weak var tasksTableView: UITableView!
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let idn = segue.identifier
        if idn == "cell"
        {
            let dest = segue.destination as! CreateTaskVC
            
        }
    }
   

}
