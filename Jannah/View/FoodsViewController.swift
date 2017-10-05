//
//  File.swift
//  Jannah
//
//  Created by Ahmad Younis on 8/14/17.
//  Copyright © 2017 Ahmad Younis. All rights reserved.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var tableView: UITableView!
    //collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        tableView.dataSource = self
        tableView.delegate = self
    }
   
    var foods: [Food] = [Food(name: "3rook", imageName: "3rook"), Food(name: "taboola", imageName: "taboola"), Food(name: "anotherFood", imageName: "taboola")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        let food = foods[indexPath.row]
        cell.label.text = food.name
        cell.thumbnailImageView.image = UIImage(named: food.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user clicked row number: \(indexPath.row)")
    }
    
}



