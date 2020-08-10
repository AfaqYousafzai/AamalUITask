//
//  Cv1VC.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 10/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class Cv1VC: UIViewController {
    
    @IBOutlet weak var profileImageBack: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tadeelView: UIView!
    @IBOutlet weak var redNoteView: UIView!
    
    @IBOutlet weak var tadeelBtn: UIButton!
    
    let sectionsTitles = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    
    let ashadaArray = ["ثانوي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        profileImageBack.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImageBack.clipsToBounds = true
        profileImageBack.layer.shadowColor = UIColor.black.cgColor
        profileImageBack.layer.shadowOpacity = 1
        profileImageBack.layer.shadowOffset = CGSize(width: 0, height: 10)
        profileImageBack.layer.shadowRadius = 10
        
        
        profileImage.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImage.clipsToBounds = true
        
        redNoteView.layer.cornerRadius = 10
        redNoteView.clipsToBounds = true
        
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
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Cv2VC") as! Cv2VC
        self.present(vc, animated: true, completion: nil)
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension Cv1VC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 141
            }
            
        }
            
        else if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 170
            }
            
        }
            
        else if indexPath.section == 2 || indexPath.section == 3 || indexPath.section == 4{
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 90
            }
        }
            
            
        else {
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 117
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cv2MAloomatCell", for: indexPath) as! Cv1MAloomatCell
                
                return cell
            }
            
        }
            
        else if indexPath.section == 1 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cv2AshadaCell", for: indexPath) as! Cv1AshadaCell
                
                cell.titleLbl.text = ashadaArray[0]
                cell.nameLbl.text = ashadaArray[1]
                cell.placeLbl.text = ashadaArray[2]
                cell.secondTitleLbl.text = "جامعي - تسويق"
                cell.secondNameLbl.text = ashadaArray[1]
                cell.secondPlaceLbl.text = ashadaArray[2]
                
                return cell
            }
            
        }
            
        else if indexPath.section == 2 || indexPath.section == 3 || indexPath.section == 4 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cv2AdoratCell", for: indexPath) as! Cv1AdoratCell
                
                return cell
            }
            
        }
            
            
        else {
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cv2AlughatCell", for: indexPath) as! Cv1AlughatCell
                
                return cell
            }
        }
        
    }
    
    
}
