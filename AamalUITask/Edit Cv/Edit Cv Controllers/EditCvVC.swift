//
//  EditCvVC.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 09/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class EditCvVC: UIViewController {
    
    @IBOutlet weak var profileImageBack: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var hifzBtn: UIButton!
    
    let sectionsTitles = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    
    let askhsiaitleArray = ["الاسم", "الوظيفة", "المدينة", "الديانة", "الجنسية", "تاريخ الميلاد", "الحالة الاإجتماعية"]
    
    let ashakhsiaContentArray = ["خالد عبدالعزيز القبيلي"]
    
    let ashahadatitleArray = ["الشهادة", "التخصص", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    let contentArray = ["جامعي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية", "الرياض", "22/01/2020", "22/01/2020"]
    
    let ashahadaSecondtitleArray = ["الشهادة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    
    let alkhabratTitleArray = ["الوظيفة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    
    let aldoratTitleArray = ["أسم الدورة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        profileImageBack.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImageBack.clipsToBounds = true
        
        profileImage.layer.cornerRadius = 0.5 * profileImageBack.bounds.size.width
        profileImage.clipsToBounds = true
        
        containerView.layer.cornerRadius = 16.0
        containerView.clipsToBounds = true
        
        hifzBtn.layer.cornerRadius = 15.0
        hifzBtn.clipsToBounds = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func hifzBtnAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
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

extension EditCvVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0:
                return 30
            case 1:
                return 362
            case 2:
                return 308
            default:
                return 362
            }
            
        }
            
        else if indexPath.section == 5 {
            switch indexPath.row {
            case 0:
                return 30
            case 1:
                return 235
            default:
                return 362
            }
        }
            
        else if indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                return 30
            case 1:
                return 195
            default:
                return 362
            }
        }
            
            
        else if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                return 30
            case 1:
                return 362
            case 2:
                return 362
            default:
                return 362
            }
        }
            
        else {
            switch indexPath.row {
            case 0:
                return 30
            case 1:
                return 308
            default:
                return 362
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 1:
            return 3
        default:
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        if section == 0 {
            return UIView()
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FooterCell") as! FooterCell
            cell.borderView.layer.borderColor = UIColor(red: 0.21, green: 0.56, blue: 0.36, alpha: 1.00).cgColor
            cell.borderView.layer.borderWidth = 1
            cell.borderView.layer.cornerRadius = 19.0
            cell.borderView.clipsToBounds = true
            return cell.contentView
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        if section == 0 {
            return 0
        }
        else if section == 4 {
            return 55
        }
        else {
            return 42
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 4 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "AlmaharatCell", for: indexPath) as! AlmaharatCell
                
                cell.istBorderView.layer.cornerRadius = 1.0
                cell.istBorderView.clipsToBounds = true
                
                cell.secondBorderView.layer.cornerRadius = 1.0
                cell.secondBorderView.clipsToBounds = true
                
                cell.thirdBorderView.layer.cornerRadius = 1.0
                cell.thirdBorderView.clipsToBounds = true
                
                cell.forthBorderView.layer.cornerRadius = 1.0
                cell.forthBorderView.clipsToBounds = true
                
                
                return cell
            }
            
        }
            
        else if indexPath.section == 5 {
            
            switch indexPath.row {
                
            case 0:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
                
                cell.titileLbl.text = sectionsTitles[indexPath.section]
                
                return cell
                
            default:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "AlughatCell", for: indexPath) as! AlughatCell
                
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
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "EditCvCell", for: indexPath) as! EditCvCell
                
                if indexPath.section == 0 {
                    
                    cell.seperatorView.isHidden = true
                    cell.secondContainerView.isHidden = false
                    
                    let arrowImage = UIImage(named: "dropdownIcon")
                    cell.istBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(arrowImage, for: .normal)
                    cell.sixthBtn.setImage(arrowImage, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    
                    cell.istTitleLbl.text = askhsiaitleArray[0]
                    cell.secondTitleLbl.text = askhsiaitleArray[1]
                    cell.thirdTitleLbl.text = askhsiaitleArray[2]
                    cell.forthTitleLbl.text = askhsiaitleArray[3]
                    cell.fifthTitleLbl.text = askhsiaitleArray[4]
                    cell.sixthTitleLbl.text = askhsiaitleArray[5]
                    cell.seventhTitleLbl.text = askhsiaitleArray[6]
                    
                    cell.istLbl.text = "خالد عبدالعزيز القبيلي"
                    cell.secondLbl.text = "مصمم UI -UX"
                    cell.thirdLbl.text = "الرياض"
                    cell.forthLbl.text = "مسلم"
                    cell.fifthLbl.text = "سعودي"
                    cell.sixthLbl.text = "22/05/1985"
                    cell.seventhLbl.text = "إعزب"
                }
                    
                else if indexPath.section == 1 {
                    
                    let arrowImage = UIImage(named: "dropdownIcon")
                    let calanderIcon = UIImage(named: "calanderIcon")
                    cell.istBtn.setImage(arrowImage, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    
                    if indexPath.row == 2 {
                        cell.secondContainerView.isHidden = true
                        
                        cell.istTitleLbl.text = ashahadaSecondtitleArray[0]
                        cell.thirdTitleLbl.text = ashahadaSecondtitleArray[1]
                        cell.forthTitleLbl.text = ashahadaSecondtitleArray[2]
                        cell.fifthTitleLbl.text = ashahadaSecondtitleArray[3]
                        cell.sixthTitleLbl.text = ashahadaSecondtitleArray[4]
                        cell.seventhTitleLbl.text = ashahadaSecondtitleArray[5]
                        
                        cell.istLbl.text = contentArray[0]
                        cell.thirdLbl.text = ""
                        cell.forthLbl.text = ""
                        cell.fifthLbl.text = ""
                        cell.sixthLbl.text = ""
                        cell.seventhLbl.text = ""
                        
                        
                    }
                    else {
                        cell.secondContainerView.isHidden = false
                        cell.istTitleLbl.text = ashahadatitleArray[0]
                        cell.secondTitleLbl.text = ashahadatitleArray[1]
                        cell.thirdTitleLbl.text = ashahadatitleArray[2]
                        cell.forthTitleLbl.text = ashahadatitleArray[2]
                        cell.fifthTitleLbl.text = ashahadatitleArray[4]
                        cell.sixthTitleLbl.text = ashahadatitleArray[5]
                        cell.seventhTitleLbl.text = ashahadatitleArray[6]
                        
                        cell.istLbl.text = contentArray[0]
                        cell.secondLbl.text = ""
                        cell.thirdLbl.text = contentArray[1]
                        cell.forthLbl.text = contentArray[2]
                        cell.fifthLbl.text = contentArray[3]
                        cell.sixthLbl.text = contentArray[4]
                        cell.seventhLbl.text = contentArray[5]
                    }
                    
                    
                }
                    
                else if indexPath.section == 2 {
                    
                    let arrowImage = UIImage(named: "dropdownIcon")
                    let calanderIcon = UIImage(named: "calanderIcon")
                    cell.istBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    cell.secondContainerView.isHidden = true
                    cell.istTitleLbl.text = alkhabratTitleArray[0]
                    cell.thirdTitleLbl.text = alkhabratTitleArray[1]
                    cell.forthTitleLbl.text = alkhabratTitleArray[2]
                    cell.fifthTitleLbl.text = alkhabratTitleArray[3]
                    cell.sixthTitleLbl.text = alkhabratTitleArray[4]
                    cell.seventhTitleLbl.text = alkhabratTitleArray[5]
                    
                    cell.istLbl.text = ""
                    cell.thirdLbl.text = ""
                    cell.forthLbl.text = contentArray[2]
                    cell.fifthLbl.text = contentArray[3]
                    cell.sixthLbl.text = contentArray[4]
                    cell.seventhLbl.text = contentArray[5]
                }
                    
                else if indexPath.section == 3 {
                    
                    let arrowImage = UIImage(named: "dropdownIcon")
                    let calanderIcon = UIImage(named: "calanderIcon")
                    cell.istBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    cell.secondContainerView.isHidden = true
                    cell.istTitleLbl.text = aldoratTitleArray[0]
                    cell.thirdTitleLbl.text = aldoratTitleArray[1]
                    cell.forthTitleLbl.text = aldoratTitleArray[2]
                    cell.fifthTitleLbl.text = aldoratTitleArray[3]
                    cell.sixthTitleLbl.text = aldoratTitleArray[4]
                    cell.seventhTitleLbl.text = aldoratTitleArray[5]
                    
                    cell.istLbl.text = ""
                    cell.thirdLbl.text = ""
                    cell.forthLbl.text = contentArray[2]
                    cell.fifthLbl.text = contentArray[3]
                    cell.sixthLbl.text = contentArray[4]
                    cell.seventhLbl.text = contentArray[5]
                }
                
                cell.istBorderView.layer.cornerRadius = 3.0
                cell.istBorderView.clipsToBounds = true
                
                cell.secondBorderView.layer.cornerRadius = 3.0
                cell.secondBorderView.clipsToBounds = true
                
                cell.thirdBorderView.layer.cornerRadius = 3.0
                cell.thirdBorderView.clipsToBounds = true
                
                cell.forthBorderView.layer.cornerRadius = 3.0
                cell.forthBorderView.clipsToBounds = true
                
                cell.fifthBorderView.layer.cornerRadius = 3.0
                cell.fifthBorderView.clipsToBounds = true
                
                cell.sixthBorderView.layer.cornerRadius = 3.0
                cell.sixthBorderView.clipsToBounds = true
                
                cell.seventhBorderView.layer.cornerRadius = 3.0
                cell.seventhBorderView.clipsToBounds = true
                
                return cell
            }
        }
        
    }
    
    
}


