//
//  HackerNewsVC.swift
//  hacker-news
//
//  Created by Pavel Parkhomey on 2/21/18.
//  Copyright © 2018 Pavel Parkhomey. All rights reserved.
//

import UIKit

class HackerNewsVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    
}
