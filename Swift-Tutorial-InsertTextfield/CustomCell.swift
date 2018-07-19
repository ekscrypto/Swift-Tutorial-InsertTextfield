//
//  CustomCell.swift
//  Swift-Tutorial-InsertTextfield
//
//  Created by Dave Poirier on 2018-07-19.
//  Copyright © 2018 Soft.Io. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField?

    static func dequeue(from tableView: UITableView) -> CustomCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as? CustomCell else { return CustomCell() }
        // do other init to the cell here...
        return cell
    }
}
