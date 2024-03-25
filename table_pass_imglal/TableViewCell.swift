//
//  TableViewCell.swift
//  table_pass_imglal
//
//  Created by Karthiga on 12/24/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var heading: UILabel!
    
    @IBOutlet weak var imgbox: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
