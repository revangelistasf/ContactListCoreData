//
//  ViewController.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista on 04/12/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var contactArray: [Contact]?
    var filteredContacts = [Contact]()
    var searchActive: Bool = false

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var contactTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contactTableView.delegate = self
        self.contactTableView.dataSource = self
        self.searchBar.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        let fetchRequest: NSFetchRequest<Contact> = Contact.fetchRequest()
        self.contactArray = try? CoreDataManager.context.fetch(fetchRequest)
        contactTableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactTableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        let contact = contactArray?[indexPath.row]
        cell.nameLabel.text = contact?.name
        cell.phoneLabel.text = contact?.phone
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let fetchRequest: NSFetchRequest<Contact> = Contact.fetchRequest()
        if searchText != ""{
            let predicate = NSPredicate(format: "name CONTAINS[cd] %@", searchText)
            fetchRequest.predicate = predicate
        }
        do {
            contactArray = try CoreDataManager.context.fetch(fetchRequest)
        } catch {
            print("Erro ao realizar a consulta")
        }
        self.contactTableView.reloadData()
    }
}

//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        let fetchRequest: NSFetchRequest<Contact> = Contact.fetchRequest()
//        let search = searchBar.text
//        let predicate = NSPredicate(format: "name CONTAINS[cd] %@", search!)
//        fetchRequest.predicate = predicate
//        contactTableView.reloadData()
//    }
