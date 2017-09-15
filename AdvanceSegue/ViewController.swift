//
//  ViewController.swift
//  AdvanceSegue
//
//  Created by Nikhil Tanappagol on 7/21/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
var active = 0
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 4
        
    }
    
  
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "Row\(indexPath.row)"
        return cell
        
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        active = indexPath.row
        performSegue(withIdentifier: "Transfer", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

