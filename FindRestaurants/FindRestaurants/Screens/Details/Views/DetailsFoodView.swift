//
//  DetailsFoodView.swift
//  FindRestaurants
//
//  Created by George on 20/12/2018.
//  Copyright © 2018 George. All rights reserved.
//

import UIKit
import MapKit

@IBDesignable class DetailsFoodView: BaseView {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func handleControl(_ sender: UIPageControl) {
        
    }
}
