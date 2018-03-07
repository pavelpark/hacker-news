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
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        // Do any additional setup after loading the view.
    }
    
    func parseData() {
        
        let url = "https://news.ycombinator.com/newest"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
    }

    
}
