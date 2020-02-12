//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Artyom Nesterenko on 7/1/20.
//  Copyright © 2020 artnest. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    private var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
}

