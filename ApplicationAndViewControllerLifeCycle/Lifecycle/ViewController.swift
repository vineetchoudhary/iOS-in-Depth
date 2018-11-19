//
//  ViewController.swift
//  Test
//
//  Created by Vineet Choudhary on 30/08/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func loadView() {
        super.loadView()
        print(view)
        print("\(#file) - \(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#file) - \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#file) - \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#file) - \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(#file) - \(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(#file) - \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#file) - \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#file) - \(#function)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("\(#file) - \(#function)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("\(#file) - \(#function)")
    }
    
}

