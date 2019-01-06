//
//  DetailsFoodViewController.swift
//  FindRestaurants
//
//  Created by George on 20/12/2018.
//  Copyright © 2018 George. All rights reserved.
//

import UIKit

class DetailsFoodViewController: UIViewController {
    
    @IBOutlet weak var detailsFoodView: DetailsFoodView?
    
    var viewModel: DetailsViewModel? {
        didSet {
            updateView()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    func updateView() {
        if let viewModel = viewModel {
            detailsFoodView?.priceLabel?.text = viewModel.price
            detailsFoodView?.hoursLabel?.text = viewModel.isOpen
            detailsFoodView?.locationLabel?.text = viewModel.phoneNumber
            detailsFoodView?.ratingsLabel?.text = viewModel.rating
        }
    }

}
