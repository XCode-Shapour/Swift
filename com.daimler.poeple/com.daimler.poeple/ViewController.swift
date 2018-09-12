//
//  ViewController.swift
//  com.daimler.poeple
//
//  Created by Apple on 11.09.18.
//  Copyright © 2018 daimler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var inputLastname: UITextField!
    
    @IBOutlet weak var inputFirstname: UITextField!
    
    @IBOutlet weak var inputHeight: UITextField!
    
    @IBOutlet weak var outputInfo: UILabel!
    
    @IBOutlet weak var actionSave: UIButton!
    
    @IBOutlet weak var actionReset: UIButton!
    
    @IBOutlet weak var actionDone: UIButton!
    
    @IBAction func buttonSave(_ sender: Any) {
        outputInfo.text = inputFirstname.text! + "  " + inputLastname.text! + "\nYour Age: " + inputHeight.text!
        
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        inputFirstname.text = ""
        inputLastname.text = ""
        inputHeight.text = ""
    }
    
    @IBAction func buttonDone(_ sender: Any) {
        let info = inputFirstname.text! + " " + inputLastname.text! + "\nYour Age: " + inputHeight.text!
        outputInfo.text = info + "\nYour Information is trasfered!"
        outputInfo.text = info + "\nThank you."
    }
    
    @IBAction func actionPerson(_ sender: Any) {
        oop()
        let myPerson = Person(lastname: "Manfred", firstname: "Hugo")
        let info1 = myPerson.sayHello()
    
        let myStudent = Student(lastname: "Musstermann", firstname: "Melina", university: "Stuttgart")
        let info2 = myStudent.sayHello()
        
        let myWorker = Worker(lastname: "Golgoun", firstname: "Melina", company: "Daimler")
        let info3 = myWorker.sayHello()
        outputInfo.text = "\(info1)\n\(info2)\n\(info3)"
    }
}

