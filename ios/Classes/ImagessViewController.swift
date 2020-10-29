//
//  ImagessViewController.swift
//  Hue
//
//  Created by Taha Malas on 10/29/20.
//

import UIKit

class ImagessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
