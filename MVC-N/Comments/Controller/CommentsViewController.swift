//
//  ViewController.swift
//  MVC-N
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkService.shared.getData { (json) in
            
        }
    }
}

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
