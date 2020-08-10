//
//  ViewController.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 09/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var mowaidView: UIView!
    @IBOutlet weak var mushahidaView: UIView!
    
    let optionsTitles = ["السيرة الذاتية", "الفيديو التعريفي", "الملف الشخصي", "سجل المواعيدv"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSettings()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    func initialSettings() {
        
        mowaidView.layer.cornerRadius = 10.0
        mowaidView.layer.borderColor = UIColor(red: 0.63, green: 0.80, blue: 0.27, alpha: 1.00).cgColor
        mowaidView.layer.borderWidth = 1.0
        mowaidView.clipsToBounds = true
        
        mushahidaView.layer.cornerRadius = 10.0
        mushahidaView.layer.borderColor = UIColor(red: 0.63, green: 0.80, blue: 0.27, alpha: 1.00).cgColor
        mushahidaView.layer.borderWidth = 1.0
        mushahidaView.clipsToBounds = true
    }
    
    
    @IBAction func notificationBtnAction(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NotificationVC") as! NotificationVC
        self.present(vc, animated: true, completion: nil)
        
    }
    

}

// Collectionview delegates and datasource methods starts here

extension HomeVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return optionsTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeOptionsCell", for: indexPath) as! HomeOptionsCell
        
        cell.containerView.layer.cornerRadius = 10.0
        cell.containerView.layer.borderColor = UIColor(red: 0.63, green: 0.80, blue: 0.27, alpha: 1.00).cgColor
        cell.containerView.layer.borderWidth = 1.0
        cell.containerView.clipsToBounds = true
        
        cell.titleLbl.text = optionsTitles[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionViewWidth = collectionView.frame.width
        
        let cellSize = CGSize(width: (collectionViewWidth / 2) - 5, height: 102)
        
        return cellSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CvVC") as! CvVC//Cv2VC//EditCvVC
            self.present(vc, animated: true, completion: nil)
        }
    }
}

