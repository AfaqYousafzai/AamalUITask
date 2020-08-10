//
//  LughatTblCell.swift
//  AamalUITask
//
//  Created by Afaq Ahmad on 10/08/2020.
//  Copyright © 2020 Afaq Ahmad. All rights reserved.
//

import UIKit

class LughatTblCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var valueLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
