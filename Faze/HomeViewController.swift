//
//  HomeViewController.swift
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
   
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    var stepArray = [UIImage]()
    var dates:[String] = ["20 Dec 2020","12 Nov 2020","28 Oct 2020"]
    var days:[String] = ["Sunday","Tuesday","Thursday"]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        smallView.layer.cornerRadius = 20
        
        stepArray = [#imageLiteral(resourceName: "Step1.png"),#imageLiteral(resourceName: "Step2.png"),#imageLiteral(resourceName: "Step3.png")]
        collectionView.dataSource = self
        collectionView.delegate = self
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.date.text = dates[indexPath.row]
        cell.day.text = days[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
    

}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stepArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! HomeCollectionViewCell
        cells.imageViews.image = stepArray[indexPath.item]
        return cells
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:150 , height:180 )
    }
    
}
