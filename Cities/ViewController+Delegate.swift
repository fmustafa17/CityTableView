//
//  ViewController+Delegate.swift
//  Cities
//
//  Created by Farhana Mustafa on 9/8/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // For single selection
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // If current cell is not present in selectedIndexes
        if !self.selectedIndexes[indexPath.section].contains(indexPath) {
            // Remove any previous selected indexpath
            self.selectedIndexes[indexPath.section].removeAll()

            // add currently selected indexpath
            self.selectedIndexes[indexPath.section].append(indexPath)

            tableView.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryView = .none
    }
}
