//
//  CellDetailViewController.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 9. 3..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import UIKit

class CellDetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    
    var images = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = images

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
