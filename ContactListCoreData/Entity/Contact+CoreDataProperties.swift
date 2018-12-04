//
//  Contact+CoreDataProperties.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista on 04/12/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var name: String?
    @NSManaged public var phone: String?

}
