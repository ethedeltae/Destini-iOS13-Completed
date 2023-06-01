//
//  NewLogInViewController.swift
//  Destini-iOS13
//
//  Created by Abhilekh Borah on 20/01/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class NewLogInViewController: UIViewController {
    
    var story = StoryBrain()
    var arr = [String]()
    //let viewControllerB = ViewController()
  

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "Delta.png")
        let button1 = UIButton()
        button1.frame = CGRect(x: 50, y: 300, width: 70, height: 70)
        button1.setBackgroundImage(image, for: UIControl.State.normal)
        button1.addTarget(self, action:#selector(self.ivb1(_:)), for: .touchUpInside)
                
        self.view.addSubview(button1)
        let image1 = UIImage(named: "Star.png")
                
        let button2 = UIButton()
        button2.frame = CGRect(x: 250, y: 300, width: 70, height: 70)
        button2.setBackgroundImage(image1, for: UIControl.State.normal)
        button2.addTarget(self, action:#selector(self.ivb2(_:)), for: .touchUpInside)
                
        self.view.addSubview(button2)
        let image2 = UIImage(named: "Rectangle.png")
                
        let button3 = UIButton()
        button3.frame = CGRect(x: 50, y: 450, width: 70, height: 70)
        button3.setBackgroundImage(image2, for: UIControl.State.normal)
        button3.addTarget(self, action:#selector(self.ivb3(_:)), for: .touchUpInside) 
                
        self.view.addSubview(button3)
        let image3 = UIImage(named: "Ellipse.png")
                
        let button4 = UIButton()
        button4.frame = CGRect(x: 250, y: 450, width: 70, height: 70)
        button4.setBackgroundImage(image3, for: UIControl.State.normal)
        button4.addTarget(self, action:#selector(self.ivb4(_:)), for: .touchUpInside)
                
        self.view.addSubview(button4)
    }
    @objc func ivb1(_ sender:UIButton!)
       {
           print("My image button tapped")
           //story.imageSetNew.append("Delta")
           arr.append("Delta")
           
       }
    @objc func ivb2(_ sender:UIButton!)
       {
           print("My image button tapped")
           //story.imageSetNew.append("Star")
           arr.append("Star")
       }
    @objc func ivb3(_ sender:UIButton!)
       {
           print("My image button tapped")
           //story.imageSetNew.append("Rectangle")
           arr.append("Rectangle")
           
       }
    @objc func ivb4(_ sender:UIButton!)
       {
           print("My image button tapped")
           //story.imageSetNew.append("Ellipse")
           arr.append("Ellipse")
           
       }
    
    @IBAction func donePressed(_ sender: UIButton) {
        //print(story.imageSetNew)
        //story.imageSet.removeAll()
        //story.imageSet.append(contentsOf: story.imageSetNew)
        //print(story.imageSet)
        //self.dismiss(animated: true, completion: nil)
        self.performSegue(withIdentifier: "againView", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "againView" {
                
                let destinationVC = segue.destination as! ViewController
                destinationVC.story.imageSet.removeAll()
                destinationVC.story.imageSet.append(contentsOf: arr)
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
