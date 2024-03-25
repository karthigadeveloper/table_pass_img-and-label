//
//  firstViewController.swift
//  table_pass_imglal
//
//  Created by Karthiga on 12/24/23.
//

import UIKit

class firstViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var img1: UIImageView!
    var img:UIImage?
    var lab: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = img{
            img1.image = image
        }
        if let txt = lab {
            lbl1.text = ""
        }

    }
    

    
}

