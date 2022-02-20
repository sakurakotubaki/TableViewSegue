//
//  DetailViewController.swift
//  TableViewTest
//
//  Created by 橋本純一 on 2022/02/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    var animal: Animal!
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameJPLabel: UILabel!
    @IBOutlet weak var animalNameENLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        animalImageView.image = UIImage(named: animal.imageName)
        animalNameJPLabel.text = animal.nameJP
        animalNameENLabel.text = animal.nameEN
    }
    

}
