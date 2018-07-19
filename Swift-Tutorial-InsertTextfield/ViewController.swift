//
//  ViewController.swift
//  Swift-Tutorial-InsertTextfield
//
//  Created by Dave Poirier on 2018-07-19.
//  Copyright © 2018 Soft.Io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView?

    var numberOfFields: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addNewTextField(_: Any?) {
        tableView?.beginUpdates()
        numberOfFields = numberOfFields + 1
        tableView?.insertRows(at: [IndexPath(row: (numberOfFields - 1), section: 0)], with: .automatic)
        tableView?.endUpdates()
    }
}

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfFields
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return CustomCell.dequeue(from: tableView)
    }
}
