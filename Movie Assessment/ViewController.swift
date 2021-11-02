//
//  ViewController.swift
//  Movie Assessment
//
//  Created by Justin Wallen on 11/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scene: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var movieImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var images = [UIImage(named: "coraline"), UIImage(named: "drStrange"), UIImage(named: "scottPilgrim"), UIImage(named: "mugenTrain"), UIImage(named: "princessFrog")]
    
    var currentImage = 0
    
    @IBAction func nextTouch(_ sender: Any) {
        currentImage += 1
        if currentImage == images.count {
             currentImage = 0
        }
        print(currentImage)
        movieImage.image = images[currentImage]
    }
    
    @IBAction func backTouch(_ sender: Any) {
        currentImage -= 1
        if currentImage == 0 {
            currentImage = images.count
        }
        print(currentImage - 1)
        movieImage.image = images[currentImage -  1]
    }
    
    
}

