//
//  Cv2AshadaCell.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 10/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class Cv2AshadaCell: UITableViewCell {

    @IBOutlet weak var placeLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var secondPlaceLbl: UILabel!
    @IBOutlet weak var secondNameLbl: UILabel!
    @IBOutlet weak var secondTitleLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
