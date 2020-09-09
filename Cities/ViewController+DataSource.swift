//
//  ViewController+DataSource.swift
//  Cities
//
//  Created by Farhana Mustafa on 9/8/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier, for: indexPath) as! CityCell
        cell.textlabel.text = data[indexPath.row]

        cell.selectionStyle = .none
        
        let selectedSectionIndexes = self.selectedIndexes[indexPath.section]

        if selectedSectionIndexes.contains(indexPath) {
            let imageView: UIImageView = UIImageView(frame:CGRect(x: 0, y: 0, width: 28, height: 30))
            imageView.image = UIImage(named: "okWhite")
            imageView.contentMode = .scaleAspectFit
            cell.accessoryView = imageView

            cell.backgroundColor = .paleGreyThree
            cell.textlabel.textColor = .black
        } else {
            cell.accessoryView = .none
            cell.backgroundColor = .white
            cell.textlabel.textColor = .battleshipGrey
        }
        
        return cell
    }
}
