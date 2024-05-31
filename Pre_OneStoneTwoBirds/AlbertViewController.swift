//
//  AlbertViewController.swift
//  Pre_OneStoneTwoBirds
//
//  Created by 김인규 on 5/31/24.
//

import UIKit

class AlbertViewController: UIViewController {

    @IBOutlet weak var AlbertTableView: UITableView!
    
    let TeamNames: [String] = ["김동건", "김인규", "송인우", "차해라"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AlbertTableView.delegate = self
        AlbertTableView.dataSource = self
    
    }
}


extension AlbertViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TeamNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        AlbertTableView
            .dequeueReusableCell(withIdentifier: "status", for: indexPath)
        cell.textLabel?.text = TeamNames[indexPath.row]
        return cell
    }
    

}
