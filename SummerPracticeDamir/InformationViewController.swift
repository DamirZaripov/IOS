//
//  InformationViewController.swift
//  SummerPracticeDamir
//
//  Created by itisioslab on 10.07.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

struct CellData {
    var cellText: String
    var cellImage : UIImage
    
    init(text : String, image : UIImage) {
        cellText = text
        cellImage = image
    }
}

class InformationViewController: ViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    @IBOutlet weak var readyLoginLable: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var cellSkillsArray = ["Футбол", "Музыка", "Фильмы", "Музыка", "Фильмы", "Музыка", "Фильмы", "Музыка", "Фильмы"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = "Дамир"
        surnameLabel.text = "Зарипов"
        ageLable.text = "19"
        cityLable.text = "Казань"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellSkillsArray.count
    } //  кол-во ячеек
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cellSkillsArray[indexPath.row]
        return cell
    }

    

}
