//
//  ViewController.swift
//  UIPageView
//
//  Created by Дмитрий Данилин on 25.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Метот срабатывает сразу после отображение view на экране
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        startPresentation()
    }
    
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController? {
            present(pageViewController!, animated:true, completion: nil)
        }
    }
}

