//
//  WARowASCII.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import Foundation

class WARowASCII {
    
    fileprivate var decimal: Int?
    fileprivate var char : String?
    
    init (decimal : Int) {
        self.decimal = decimal
        self.char = getAscii(decimal)
    }
    
    static func generate() -> [WARowASCII] {
        var rows : [WARowASCII] = []
        for i in 0...126 {
            rows.append(WARowASCII(decimal : i))
        }
        return rows
    }
    
    func getAscii(_ decimal : Int) -> String {
        let data = ["NULL",
                    "START OF TEXT",
                    "END OF TEXT",
                    "END OF TRANSMISSION",
                    "ENQUIRY",
                    "ACKNOWLEDGE",
                    "BELL",
                    "BACKSPACE",
                    "HORIZONTAL TAB",
                    "LINE FEED",
                    "VERTICAL TAB",
                    "FORM FEED",
                    "CARRIAGE RETURN",
                    "SHIFT OUT",
                    "SHIFT IN",
                    "DATA LINK ESCAPE",
                    "DEVICE CONTROL 1",
                    "DEVICE CONTROL 2",
                    "DEVICE CONTROL 3",
                    "DEVICE CONTROL 4",
                    "NEGATIVE ACKNOWLEDGE",
                    "SYNCHRONOUS IDLE",
                    "ENG OF TRANS. BLOCK",
                    "CANCEL",
                    "END OF MEDIUM",
                    "SUBSTITUTE",
                    "ESCAPE",
                    "FILE SEPARATOR",
                    "GROUP SEPARATOR",
                    "RECORD SEPARATOR",
                    "UNIT SEPARATOR",
                    "SPACE",
                    "!","\"","#","$","%","&","‘","(",")","*","+","’","-",".","/","0","1","2","3","4","5","6","7","8","9",
                    ":",";","<","=",">","?","@",
                    "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T",",U","V","W","X","Y","Z",
                    "[","\\","[","^","-","`",
                    "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                    "{","|","}","_","DEL"
        ]
        return data[decimal]
    }
    
    func getDecimal() -> Int {
        if decimal == nil {return -1}
        return decimal!
    }
    
    func getHexa() -> String {
        if decimal == nil {return "undefined"}
        return String(decimal!,radix: 16).uppercased()
    }
    
    func getChar() -> String {
        if char == nil {return "undefined"}
        return char!
    }
    
}
