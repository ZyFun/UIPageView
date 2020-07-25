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
    
    // Метод, запускающий презентацию
    func startPresentation() {
        // Если презентацию уже просмотрели, то она не запусстится, так как ключу присвоено значение True
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "PresentationWasViewed")
        if presentationWasViewed == false {
            // Запуск презентации
            if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController? {
                
                present(pageViewController!, animated:true, completion: nil)
            }
        }
    }
}
