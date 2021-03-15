//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鈴木　鳴菜 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    let 画像の名前 = ["img1", "img2", "img3"]
    var 画像番号 = 1
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func 次へボタンした時(_ sender: Any) {
        
        if 画像番号 == 1{
            ImageView.image = UIImage(named:画像の名前[1])
            画像番号 = 2
            
        } else if 画像番号 == 2 {
        ImageView.image = UIImage(named:画像の名前[2])
        画像番号 = 3
        
        } else {
            ImageView.image = UIImage(named:画像の名前[0])
            画像番号 = 1
        
    }
    
}

}
