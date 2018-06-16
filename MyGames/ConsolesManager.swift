//
//  ConsolesManager.swift
//  MyGames
//
//  Created by MacOSSierra on 13/05/18.
//  Copyright © 2018 MacOSSierra. All rights reserved.
//

import CoreData

class ConsoleManager {
    static let shared = ConsoleManager()
    var consoles: [Console] = []
    
    func loadConsoles(with context: NSManagedObjectContext){
        let fetchRequest: NSFetchRequest<Console> = Console.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            consoles = try context.fetch(fetchRequest)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func deleteConsole(index: Int, context: NSManagedObjectContext) {
        let console = consoles[index]
        context.delete(console)
        do {
            try context.save()
            consoles.remove(at: index)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private init(){
    
    }
}
