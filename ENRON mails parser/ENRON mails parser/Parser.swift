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
    
    func parseText(){
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
    
    func saveWord(){
        let appDelegate = AppDelegate()
        let managedContext = appDelegate.managedObjectContext
        
        
    }
}
