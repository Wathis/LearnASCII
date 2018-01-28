//
//  WATableController.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WATableController: UITableViewController {
    
    let cellid = "cellIdHome"
    var asciiRows = WARowASCII.generate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ASCII Table"
        self.tableView.register(WAViewTable.self, forCellReuseIdentifier: cellid)
        self.tableView.backgroundColor = .clear
        self.tableView.separatorStyle = .none
        self.tableView.showsVerticalScrollIndicator = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return asciiRows.count + 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 40 : 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! WAViewTable
        if indexPath.row != 0 {
            if indexPath.row % 2 == 0 {
                cell.setBackgroundColor(color: UIColor(rgb: 0x2D3751))
            } else {
                cell.setBackgroundColor(color: UIColor(rgb: 0x50597A))
            }
            cell.setColorFonts(color: .white)
            cell.setupTitles(decimal: String(asciiRows[indexPath.row - 1].getDecimal()), hex: asciiRows[indexPath.row - 1].getHexa(), char: asciiRows[indexPath.row - 1].getChar())
        } else {
            cell.setupTitles(decimal: "Decimal", hex: "Hex", char: "Character")
            cell.setColorFonts(color: UIColor(rgb:0x50597A))
            cell.setBackgroundColor(color: UIColor(rgb:0xE0E0E0))
        }
        return cell
    }
    

}
