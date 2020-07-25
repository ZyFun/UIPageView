//
//  ContentViewController.swift
//  UIPageView
//
//  Created by Дмитрий Данилин on 25.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var descriptionHelp: UILabel!
    @IBOutlet weak var emojiSymbol: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var goButton: UIButton!
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0 // Номер текущей страницы
    var numberOfPage = 0 // Количество страниц
    let paceVC = PageViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionHelp.text = presentText
        emojiSymbol.text = emoji
        pageControl.numberOfPages = numberOfPage
        pageControl.currentPage = currentPage
        
        goButton.isHidden = true
        if currentPage == paceVC.presentTextArray.count - 1 {
            goButton.isHidden = false
        }
    }
    
    @IBAction func goActionButton(_ sender: Any) {
        // Присваиваем ключу значение True
        let userDefaults = UserDefaults.standard
        userDefaults.set(true, forKey: "PresentationWasViewed")
        // Закрываем презентацию
        dismiss(animated: true, completion: nil)
    }
}
 
