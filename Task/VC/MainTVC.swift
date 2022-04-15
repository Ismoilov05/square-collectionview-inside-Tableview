//
//  MainTVC.swift
//  Task
//
//  Created by Muhammadqodir on 27/03/22.
//

import UIKit

class MainTVC: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate =  self
            collectionView.dataSource = self
            collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            collectionView.register(UINib(nibName: "CollectCell", bundle: nil), forCellWithReuseIdentifier: "CollectCell")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
              
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}



extension  MainTVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        12
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectCell", for: indexPath) as! CollectCell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Works")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width - 48)/2.4, height: (UIScreen.main.bounds.width - 48)/2.4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        16
    }
    

    

}



