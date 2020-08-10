//
//  CvVC.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 10/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class CvVC: UIViewController {

   @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tadeelView: UIView!
    
    @IBOutlet weak var tadeelBtn: UIButton!
    
    let sectionsTitles = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.        
        containerView.layer.cornerRadius = 16.0
        containerView.clipsToBounds = true
        
        tadeelView.layer.cornerRadius = 15.0
        tadeelView.clipsToBounds = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func tadeelBtnAction(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Cv1VC") as! Cv1VC//EditCvVC
        self.present(vc, animated: true, completion: nil)
        
    }
}
