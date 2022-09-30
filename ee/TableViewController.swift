//
//  TableViewController.swift
//  ee
//
//  Created by Apps2T on 30/9/22.
//

import Foundation
import UIKit

class MyTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView : UITableView!
    
    
    let arrayCeldas = ["Mario", "Pedro", "Martin", "Delfin", "Andres"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MyCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for : indexPath) as! MyCell
        cell.labelUserName.text = arrayCeldas[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
}
