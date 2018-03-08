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
        
        let url = "https://hacker-news.firebaseio.com/v0/" // Make sure to find right link to get JSON from...
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        
        let task = session.dataTask(with: request) { (data, response, error) in
        
            if (error != nil) {
                print("Error parsing out the data.")
            } else {
                do {
                    let fetchData = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSArray
                    print(fetchData)
                }
                catch {
                    print("Error catching")
                }
            }
        }
        task.resume()
    }

    
}
