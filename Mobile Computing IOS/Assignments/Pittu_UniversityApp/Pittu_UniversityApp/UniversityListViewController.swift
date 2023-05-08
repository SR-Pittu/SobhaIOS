//
//  UniversityListViewController.swift
//  Pittu_UniversityApp
//
//  Created by Pittu,Sobhareddy on 4/18/23.
//

import UIKit


class UniversityListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destUniverity.universitiesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = universityListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        //populate the cell we created
        cell.textLabel?.text = destUniverity.universitiesList[indexPath.row].collegeName
    
        //return cell
        return cell
    }
   

    
    var destUniverity = Universities()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "\(destUniverity.domain)"
        universityListTableView.dataSource = self
        universityListTableView.delegate = self
    }
    
    @IBOutlet weak var universityListTableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if(transition=="universityInfoSegue"){
            let destination = segue.destination as! UniversityInfoViewController
            destination.destUniArray = destUniverity.universitiesList[(universityListTableView.indexPathForSelectedRow?.row)!]
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
