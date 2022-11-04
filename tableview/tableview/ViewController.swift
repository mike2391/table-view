//
//  ViewController.swift
//  tableview
//
//  Created by prk on 11/3/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["bang doe", "cik due", "mak doe", "babe doe", "dedek doe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //-------------------------------------------------------

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yo tapped me")
    }
    
    
    //-------------------------------------------------------------

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    
    }

}

