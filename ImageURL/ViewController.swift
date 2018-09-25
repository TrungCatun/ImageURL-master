//
//  ViewController.swift
//  ImageURL
//
//  Created by dohien on 6/23/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.startAnimating()
        imageUrlString()
    }
    func imageUrlString() {
        let imageUrlString = "http://s1.picswalls.com/wallpapers/2016/06/10/4k-high-definition-wallpaper_065229159_309.jpg"
        // ép kiểu về URL
        let imageURL = URL(string: imageUrlString)!
        // lấy dữ liệu về máy
        DispatchQueue.global().async {
            
            let imageData = NSData(contentsOf: imageURL)!
            
            DispatchQueue.main.async {
                // ép về kiểu image
                
                let image = UIImage(data: imageData as Data)
                self.imageView.image = image
                self.spinner.isHidden = true
            }
        }
    }
//        func startLoading(){
//            spinner.center = self.view.center
//            spinner.hidesWhenStopped = true
//            spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
//            view.addSubview(spinner)
//            spinner.startAnimating()
//            UIApplication.shared.beginIgnoringInteractionEvents()
//        }
    
    
}
