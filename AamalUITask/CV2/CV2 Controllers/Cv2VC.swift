//
//  Cv2VC.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 10/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class Cv2VC: UIViewController {
    
    @IBOutlet weak var profileImageBack: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tadeelView: UIView!
    
    @IBOutlet weak var tadeelBtn: UIButton!
    
    let sectionsTitles = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    
    let maloomatArray = ["34 سنة", "السعودية", "الرياض", "إعزب"]
    let maloomatTitleArray = ["العمر", "الجنسية", "المدينة", "الحالة الاإجتماعية"]
    
    let ashadaount = 2
    
    let adoratCount = 1
    
    let alkhabratCount = 4
    
    let ashadaArray = ["ثانوي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]
    let ashadaSecondArray = ["جامعي - تسويق", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]
    
    let adoraArray = ["برمجة php", "معهد معد للتقنيات", "المملكة العربية السعودية - الرياض"]
    
    let alughatArray = ["للغة الأم", "ممتازة", "مبتدئ"]
    let alughatTitleArray = ["اللغة العربية", "اللغة الانجليزية", "الفرنسية"]
    
    let maharatArray = ["إدارة الفريق", "تحمل الضغط في العمل", "حل المشاكل بفعالية", "إدارة الوقت"]
    
    let alkhabratArray = ["مبيعات", "تسويق", "إدارة الموقع الإلكتروني", "إدارة الموقع الإلكتروني"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        profileImageBack.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImageBack.clipsToBounds = true
        
        profileImage.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImage.clipsToBounds = true
        
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
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EditCvVC") as! EditCvVC
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

extension Cv2VC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 31
            }
            
        }
            
        else if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 90
            }
            
        }
            
        else if indexPath.section == 2 {
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 90
            }
        }
            
        else if indexPath.section == 3 {
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 90
            }
        }
            
        else if indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 31
            }
        }
            
            
        else {
            switch indexPath.row {
            case 0:
                return 30
            default:
                return 31
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return maloomatArray.count + 1
        }
            
        else if section == 1 {
            return ashadaount + 1
        }
            
        else if section == 2 {
            return adoratCount + 1
            
        }
            
        else if section == 3 {
            return alkhabratCount + 1
            
        }
            
        else if section == 4 {
            return maharatArray.count + 1
        }
            
            
        else {
            return alughatArray.count + 1
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "AlmaloomatTblCell", for: indexPath) as! AlmaloomatTblCell
                
                cell.titleLbl.text = maloomatTitleArray[indexPath.row - 1]
                cell.valueLbl.text = maloomatArray[indexPath.row - 1]
                
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
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "GenericCell", for: indexPath) as! GenericCell
                
                
                if indexPath.row == 1 {
                    cell.titleLbl.text = ashadaArray[0]
                    cell.nameLbl.text = ashadaArray[1]
                    cell.placeLbl.text = ashadaArray[2]
                }
                else if indexPath.row == 2 {
                    cell.titleLbl.text = ashadaSecondArray[0]
                    cell.nameLbl.text = ashadaSecondArray[1]
                    cell.placeLbl.text = ashadaSecondArray[2]
                }
                
                
                
                return cell
            }
            
        }
            
        else if indexPath.section == 2 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section + 1]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "GenericCell", for: indexPath) as! GenericCell
                
                
                cell.titleLbl.text = adoraArray[0]
                cell.nameLbl.text = adoraArray[1]
                cell.placeLbl.text = adoraArray[2]
                
                return cell
            }
            
        }
            
        else if indexPath.section == 3 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section - 1]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "GenericCell", for: indexPath) as! GenericCell
                
                cell.titleLbl.text = alkhabratArray[indexPath.row - 1]
                cell.nameLbl.text = adoraArray[1]
                cell.placeLbl.text = adoraArray[2]
                
                return cell
            }
            
        }
            
        else if indexPath.section == 4 {
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "MaharatTblCell", for: indexPath) as! MaharatTblCell
                
                cell.titleLbl.text = maharatArray[indexPath.row - 1]
                
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
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "LughatTblCell", for: indexPath) as! LughatTblCell
                
                cell.titleLbl.text = alughatTitleArray[indexPath.row - 1]
                cell.valueLbl.text = alughatArray[indexPath.row - 1]
                
                return cell
            }
        }
        
    }
    
    
}

