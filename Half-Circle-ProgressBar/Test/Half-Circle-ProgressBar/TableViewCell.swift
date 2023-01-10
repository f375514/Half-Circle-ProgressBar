//
//  TableViewCell.swift
//  Test
//
//  Created by Md Hosne Mobarok on 4/6/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var like: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    

}
