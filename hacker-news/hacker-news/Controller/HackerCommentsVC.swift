//
//  HackerCommentsVC.swift
//  hacker-news
//
//  Created by Pavel Parkhomey on 2/16/18.
//  Copyright © 2018 Pavel Parkhomey. All rights reserved.
//

import UIKit

class HackerCommentsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 140
    }


}
