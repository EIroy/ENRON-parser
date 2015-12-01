//
//  Parser.swift
//  ENRON mails parser
//
//  Created by Konstantin Sobolev on 18.11.15.
//  Copyright © 2015 Elroy. All rights reserved.
//

import Cocoa
import Foundation
import CoreData

//let fullpath = "mail_folder"

class Parser: NSObject {

    var words = [NSManagedObject]()
    
    func loadMailText(path: String) -> String {
        do {
            let text = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            return text as String
        }
        catch let error as NSError  {
            print("Could not load file \(path), \(error), \(error.userInfo)")
        }
    }
    
    func parseText() {
        let fileLocation = NSBundle.mainBundle().pathForResource("filename", ofType: "txt")!
        let text : String
        do
        {
            text = try String(contentsOfFile: fileLocation)
        }
        catch
        {
            text = ""
        }
        
        var wordsArr = text.componentsSeparatedByString(" ")
        
        for word in wordsArr {
            if word
        }
        
    }
    
    func saveWord(_word: String) {
        let appDelegate = AppDelegate()
        let managedContext = appDelegate.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Word", inManagedObjectContext: managedContext)
        let word = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        word.setValue(_word, forKey: "body")
        
        do {
            try managedContext.save()
            words.append(word)
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
    func fetchWords() {
        let appDelegate = AppDelegate()
        let managedContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Word")
        
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            words = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        }
    }
}
