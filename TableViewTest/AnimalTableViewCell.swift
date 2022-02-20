//
//  AnimalTableViewCell.swift
//  TableViewTest
//
//  Created by 橋本純一 on 2022/02/20.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalNameJPLabel: UILabel!
    @IBOutlet weak var animalNameENLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
