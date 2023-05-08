//
//  TaskVC.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import UIKit


class TaskVC: UIViewController, UITableViewDataSource , UITableViewDelegate{
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
       // tasksTableView.reloadData()
      return   3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return CompletedTasks.tasks.item.count
        }
       else if section == 1
        {
           let a = PendingTasks.tasks.item.count
           return a
        }
        else
        {
            return  CanceledTasks.tasks.item.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = CompletedTasks.tasks.item[indexPath.row]
        
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = PendingTasks.tasks.item[indexPath.row]
            
        }
        else {
            cell.textLabel?.text = CanceledTasks.tasks.item[indexPath.row]
            
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
        else {
        return "Canceled"
        }
}
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasksTableView.dataSource = self
        tasksTableView.delegate = self
        tasksTableView.reloadData()
        print("\(PendingTasks.tasks.item)")
            // self.delegate?.CreateTaskVC(PendingTasks.tasks.item)
    }
    
    @IBOutlet weak var tasksTableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        self.reloadInputViews()
        self.tasksTableView.reloadData()
        tasksTableView.dataSource = self
        tasksTableView.delegate = self
        print("\(PendingTasks.tasks.item)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.reloadInputViews()
        self.tasksTableView.reloadData()
        tasksTableView.dataSource = self
        tasksTableView.delegate = self
        print("\(PendingTasks.tasks.item)")
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        if indexPath.section == 1{
            let completeAction = UIContextualAction(style: .normal, title: "Completed") { [weak self] _, _, completionHandler in
                // Move task from pending to completed
                let task = PendingTasks.tasks.item.remove(at: indexPath.row)
                CompletedTasks.tasks.item.append(task )
                tableView.reloadSections([0, 1], with: .automatic)
                completionHandler(true)
            }
            completeAction.backgroundColor = .green

            let cancelAction = UIContextualAction(style: .normal, title: "Canceled") { [weak self] _, _, completionHandler in
                // Move task from pending to canceled
                let task = PendingTasks.tasks.item.remove(at: indexPath.row)
                CanceledTasks.tasks.item.append(task )
                tableView.reloadSections([1, 2], with: .automatic)
                completionHandler(true)
            }
            cancelAction.backgroundColor = .red

            return UISwipeActionsConfiguration(actions: [cancelAction, completeAction])
        }
        return nil
    }
   
}
