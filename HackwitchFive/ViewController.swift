//
//  ViewController.swift
//  HackwitchFive
//
//  Created by Caitlin Alvior on 2/28/18.
//  Copyright © 2018 Caitlin Alvior. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var myFriendsArray: [String] = ["Mahina", "Adrianne", "Raena"]
   
    var restaurantImageData = [String]()
    
    @IBOutlet var tableView: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        func numberOfSelections(in tableView: UITableView) -> Int {
            return 1;
        }
       
        //Part 6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)  -> Int {
        return myFriendsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
            let text = myFriendsArray[indexPath.row]
            cell.textLabel?.text=text
            return cell
    }
    
   
    //Part 7
    func tableView(_tableView:UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    
    
}
