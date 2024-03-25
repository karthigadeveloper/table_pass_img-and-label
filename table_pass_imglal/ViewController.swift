//
//  ViewController.swift
//  table_pass_imglal
//
//  Created by Karthiga on 12/24/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    let names = ["AAA","BBB","CCC","DDD","EEE"]
    let  net  = ["aaa","bbb","ccc","ddd","eee"]
    let mg = ["ig1","ig2","ig3","ig4","ig5"]
    let imagepicker = UIImagePickerController()
@IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let proto = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! TableViewCell
        proto.label1.text = names[indexPath.row]
        proto.label2.text = net[indexPath.row]
        
        let imageName = mg[indexPath.row]
        if let image = UIImage(named: imageName) {
            proto.imgbox.image = image
                }
        
        
        return proto
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "firstView") as? firstViewController
        vc?.img = UIImage(named: mg[indexPath.row])
        vc?.lab?.text =  net [indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    }


