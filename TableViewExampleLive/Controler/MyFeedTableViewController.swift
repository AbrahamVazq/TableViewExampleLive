//
//  MyFeedTableViewController.swift
//  TableViewExampleLive
//
//  Created by 291732 on 27/09/22.
//

import UIKit

class MyFeedTableViewController: UITableViewController {
    
    //MARK: - C L A S S · P R O P E R T I E S
    private var presenter: FeedPresenter?
    
    
    //MARK: - C L A S S · M E T H O D S
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        presenter =  FeedPresenter()
    }

    //MARK: - Private helper Methods
    private func setupView(){
        let nib = UINib(nibName: "MyFeedTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "MyFeedTableViewCell")
        tableView.backgroundColor = .lightGray
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "My Feed"
    }

    
}

// MARK: - Table view data source
extension MyFeedTableViewController{
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getNumberOfRows() ?? 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        presenter?.getCell(forRow: indexPath.row, using: tableView) ?? MyFeedTableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
        
    }
    
}
