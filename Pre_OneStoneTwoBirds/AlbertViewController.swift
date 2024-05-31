//
//  AlbertViewController.swift
//  Pre_OneStoneTwoBirds
//
//  Created by 김인규 on 5/31/24.
//

import UIKit

class AlbertViewController: UIViewController {

    @IBOutlet weak var AlbertTableView: UITableView!
    let teamNames: [String] = ["김동언", "김인규", "송인우", "차해라"]
    let MBTI: [String] = ["ENFP", "ENTP", "ESTP", "INTP"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AlbertTableView.delegate = self
        AlbertTableView.dataSource = self
    
    }
}


extension AlbertViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamNames.count //데이터 몇 개?
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AlbertTableView.dequeueReusableCell(withIdentifier: "status1", for: indexPath) as! Type1
        cell.LabelText.text = teamNames[indexPath.row]
        //as? as! - 부모 자식 친자확인
        return cell //무엇을 보여줄래? 반복?

    }
    

}
