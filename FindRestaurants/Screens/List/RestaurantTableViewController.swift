//
//  RestaurantTableViewController.swift
//  FindRestaurants
//
//  Created by George on 20/12/2018.
//  Copyright © 2018 George. All rights reserved.
//

import UIKit

protocol ListActions: class {
    func didTapCell(_ viewModel: RestaurantListViewModel)
}

class RestaurantTableViewController: UITableViewController {

    var viewModels = [RestaurantListViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
     weak var delegete: ListActions?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantTableViewCell
        
        let vm = viewModels[indexPath.row]
        cell.configure(with: vm)
        
        return cell
    }
    
    // MARK: - Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vm = viewModels[indexPath.row]
        delegete?.didTapCell(vm)
    }
}
