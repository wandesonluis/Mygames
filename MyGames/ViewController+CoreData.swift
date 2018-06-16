//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by MacOSSierra on 13/05/18.
//  Copyright © 2018 MacOSSierra. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return appDelegate.persistentContainer.viewContext
    }
}
