//
//  ViewController.swift
//  MiniApp09-TableViewSelected
//
//  Created by 前田航汰 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var TextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func exitCancel(segue: UIStoryboardSegue){
    }

    @IBAction func exitSelected(segue: UIStoryboardSegue){
        guard let nextVC = segue.source as? TableViewController else {
            return
        }
        guard let selected = nextVC.tableView.indexPathForSelectedRow?[1] else{
            return
        }
        TextLabel.text = String((selected + 1) * 100)
    }

}

