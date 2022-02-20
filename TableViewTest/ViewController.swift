//
//  ViewController.swift
//  TableViewTest
//
//  Created by 橋本純一 on 2022/02/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var animals: [Animal] = []
   
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        loadData()
    }
    
    func loadData() {
       animals.append(Animal(nameJP: "ふくろう", nameEN: "Owl", imageName: "owl"))
       animals.append(Animal(nameJP: "とり", nameEN: "Bird", imageName: "bird"))
       animals.append(Animal(nameJP: "らいおん", nameEN: "Lion", imageName: "lion"))
       animals.append(Animal(nameJP: "かば", nameEN: "Hippo", imageName: "hippo"))
       animals.append(Animal(nameJP: "くま", nameEN: "Bear", imageName: "bear"))
       animals.append(Animal(nameJP: "はりねずみ", nameEN: "Hedgehog", imageName: "hedgehog"))
       animals.append(Animal(nameJP: "ぞう", nameEN: "Elephant", imageName: "elephant"))
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell else {
                fatalError("Dequeue failed: AnimalTableViewCell.")
            }
            
            cell.animalNameJPLabel.text = animals[indexPath.row].nameJP
            cell.animalNameENLabel.text = animals[indexPath.row].nameEN
            cell.animalImageView.image = UIImage(named: animals[indexPath.row].imageName)

            return cell
    }
    
    /*
     prepare() は Segue が実行される前に呼ばれるメソッドで、ここで次の view controller が表示される前にやりたいことをここで実行することができます。
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = myTableView.indexPathForSelectedRow {
                guard let destination = segue.destination as? DetailViewController else {
                    fatalError("Failed to prepare DetailViewController.")
                }
                
                destination.animal = animals[indexPath.row]
            }
        }
    }

}

