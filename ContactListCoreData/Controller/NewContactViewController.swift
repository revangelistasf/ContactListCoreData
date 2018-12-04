//
//  NewContactViewController.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista on 04/12/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!

    @IBAction func saveNewContact(_ sender: Any) {
        newContact(name: nameTextField.text!, phone: phoneTextField.text!)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func newContact(name: String, phone: String) {
        let newContact = Contact(context: CoreDataManager.context)
        newContact.name = name
        newContact.phone = phone
        CoreDataManager.saveContext()
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
