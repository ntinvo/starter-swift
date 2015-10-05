//
//  ViewController.swift
//

import UIKit
import Firebase

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create a Firebase ref, see: https://firebase.com/docs/ios/guide
    let ref = Firebase(url: "https://<YOUR-FIREBASE-APP>.firebaseio.com")
    
    // For more info, see: https://firebase.com/docs/ios/quickstart.html
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

