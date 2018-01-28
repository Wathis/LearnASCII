//
//  WAHomeController.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAHomeController: UITableViewController {
    
    let cellid = "cellIdHome"
    let cellidHeader = "cellIdHomeHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Learn ASCII"
        self.tableView.register(WAViewHomeCell.self, forCellReuseIdentifier: cellid)
        self.tableView.register(WAViewHomeHeader.self, forCellReuseIdentifier: cellidHeader)
        self.tableView.backgroundColor = .clear
        self.tableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 130 : 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
            case 1:
                self.navigationController?.pushViewController(WAGameViewController(), animated: true)
                break
            default:
                break
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row != 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! WAViewHomeCell
            switch indexPath.row {
            case 1:
                cell.setImage(image: #imageLiteral(resourceName: "play"))
                cell.setupText(text: "Go Training !")
                break
            case 2:
                cell.setImage(image: #imageLiteral(resourceName: "checked"))
                cell.setupText(text: "Characters Learned")
                break
            case 3:
                cell.setImage(image: #imageLiteral(resourceName: "points"))
                cell.setupText(text: "Characters To Learn")
                break
            default:
                break
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellidHeader, for: indexPath) as! WAViewHomeHeader
            return cell
        }
    }
}
