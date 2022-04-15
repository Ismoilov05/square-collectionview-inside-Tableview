//
//  HomeVC.swift
//  Task
//
//  Created by Muhammadqodir on 27/03/22.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib(nibName: "MainTVC", bundle: nil), forCellReuseIdentifier: "MainTVC")
    }
    
}


extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTVC", for: indexPath) as! MainTVC
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        (UIScreen.main.bounds.width - 48)/2.4 + 35.5
    }
}



