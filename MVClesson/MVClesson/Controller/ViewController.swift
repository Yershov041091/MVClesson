//
//  ViewController.swift
//  MVClesson
//
//  Created by Artem Yershov on 24.07.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    private var dataSource = IrregularVerbs()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "VerbTableViewCell")
        dataSource.configeVerb()
    }
    
    // MARK: - Methods
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.verbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VerbTableViewCell", for: indexPath) as? VerbTableViewCell else { return UITableViewCell()}
        
        cell.configureVerb(for: dataSource.verbs[indexPath.row])
        
        return cell
    }
}
// MARK: - UITableViewDelegat
extension UIViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        69
    }
}

