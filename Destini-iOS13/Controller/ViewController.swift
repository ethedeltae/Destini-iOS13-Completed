

import UIKit

class ViewController: UIViewController {
    var story = StoryBrain()

    //var array = [String]()
    
    @IBOutlet weak var buttonClicked: UIButton!
    @IBOutlet weak var userEnter: UITextField!
    @IBOutlet weak var imageCollection: UIImageView!
    
    @IBAction func Ivb1(_ sender: UIButton) {
        story.imageSet.removeAll()
        print(story.imageSet)
        
        self.performSegue(withIdentifier: "newLog", sender: self)
    }
    @IBOutlet weak var textFieldError: UILabel!
    @IBOutlet weak var IV1: UIImageView!
    
    @IBOutlet weak var IV2: UIImageView!
    
    @IBOutlet weak var IV3: UIImageView!
    
    @IBOutlet weak var IV4: UIImageView!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
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
        

      
        view.addGestureRecognizer(tap)
      
     
       


    }
    @objc func ivb1(_ sender:UIButton!)
       {
           print("My image button tapped")
           story.array.append("Delta")
           
       }
    @objc func ivb2(_ sender:UIButton!)
       {
           print("My image button tapped")
           story.array.append("Star")
           
       }
    @objc func ivb3(_ sender:UIButton!)
       {
           print("My image button tapped")
           story.array.append("Rectangle")
           
       }
    @objc func ivb4(_ sender:UIButton!)
       {
           print("My image button tapped")
           story.array.append("Ellipse")
           
       }

    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
  
    @IBAction func logInPressed(_ sender: UIButton) {
        if(story.array == story.imageSet && userEnter.text != ""){
            print("true")
            
            self.performSegue(withIdentifier: "logInResult", sender: self)
        }
        else{
            if(story.array != story.imageSet){
                textFieldError.text = "Wrong Password!"
            }
            else if(userEnter.text == ""){
                textFieldError.text = "Enter Username!"
            }
            
        }
        story.array.removeAll()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "logInResult" {
                
              

            }
        }
    
 
    //@objc func newLoginPressed(_ sender: UIButton) {
        
        //let storyboard = UIStoryboard(name: "Main", bundle: nil);
        //let vc = storyboard.instantiateViewController(identifier: "newLog") as! NewLogInViewController
        //self.present(vc, animated: true, completion: nil)
        
    //}

    
    
   
    
}
































