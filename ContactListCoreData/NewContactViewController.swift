//
//  NewContactViewController.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista on 04/12/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {

    @IBAction func didTapSave(_ sender: Any) {
    
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
