//
//  ViewController.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista on 04/12/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contactTableView.delegate = self
        self.contactTableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        print("That Works")
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
