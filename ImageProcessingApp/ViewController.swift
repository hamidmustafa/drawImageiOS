//
//  ViewController.swift
//  ImageProcessingApp
//
//  Created by HAMID MUSTAFA on 5/4/19.
//  Copyright © 2019 HAMID MUSTAFA. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    @IBOutlet weak var initialImageLabel: UILabel!
    @IBOutlet weak var initialImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func onButtonClick(_ sender: UIButton) {
        //method call to draw an Image
        drawOnImage()
    }
    
    func drawOnImage() {
        let imageRendered = UIImage(named: "orange-image.jpg")
        UIGraphicsBeginImageContext((imageRendered?.size)!)
        imageRendered!.draw(at: CGPoint.zero)
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(8.0)
        context!.setStrokeColor(UIColor.black.cgColor)
        context!.move(to: CGPoint(x: 100, y: 100))
        context!.addRect(CGRect(x: 0, y: 0, width: 512, height: 512))
        context!.addRect(CGRect(x: 512, y: 0, width: 512, height: 512))
        context!.addRect(CGRect(x: 1024, y: 0, width: 800, height: 512))
        context!.addRect(CGRect(x: 0, y: 512, width: 400, height: 512))
        context!.addRect(CGRect(x: 512, y: 512, width: 512, height: 512))
        context!.addRect(CGRect(x: 1024, y: 512, width: 900, height: 512))
        context!.strokePath()
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        initialImageView.image = newImage
    }
}


