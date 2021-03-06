//
//  NotificationVC.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 09/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    let notificationData = ["تأكد من السيرة الذاتية", "الاحد 2020/3/25", "السيرة الذاتية غير مكتملة تأكد من تعبئة جميع الخانات لظمان ظهورها للشركات"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        containerView.layer.cornerRadius = 16.0
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
           return .lightContent
       }
    
    @IBAction func backBtnAction(_ sender: Any) {
        
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

extension NotificationVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 119
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotifyCell", for: indexPath) as! NotifyCell
        
        cell.titleLbl.text = notificationData[0]
        cell.dateLbl.text = notificationData[1]
        cell.descriptionLbl.text = notificationData[2]
        
        cell.containerView.layer.cornerRadius = 10.0
        
        return cell
    }
    
    
    
    
    
}
