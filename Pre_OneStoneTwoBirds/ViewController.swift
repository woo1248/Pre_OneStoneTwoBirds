//
//  ViewController.swift
//  Pre_OneStoneTwoBirds
//
//  Created by t2023-m0119 on 5/31/24.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var introText: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapMoreButton(_ sender: UIButton) {introText.isHidden = !introText.isHidden}
    }
    


