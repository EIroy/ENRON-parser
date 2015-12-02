//
//  Folderer.swift
//  ENRON mails parser
//
//  Created by Konstantin Sobolev on 02.12.15.
//  Copyright © 2015 Elroy. All rights reserved.
//

import Foundation

class Folderer: NSObject {
    
    func loadText(path: String) -> String {
        do {
            let text = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            return text as String
        }
        catch let error as NSError  {
            print("Could not load file \(path), \(error), \(error.userInfo)")
        }
    }

}