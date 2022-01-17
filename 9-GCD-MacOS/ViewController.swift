//
//  ViewController.swift
//  9-GCD-MacOS
//
//  Created by Baris Karalar on 17.01.2022.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        runBackgorundCode1()
       
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @objc func log(message: String) {
        print("Printing message: \(message)")
    }
    

    func runBackgorundCode1() {
        performSelector(inBackground: #selector(log), with: "Hello world 1")

        performSelector(onMainThread: #selector(log), with: "Hello world 2", waitUntilDone: false)
        
        log(message: "Hello world 3")
    }
}

