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
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0 // Номер текущей страницы
    var numberOfPage = 0 // Количество страниц
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionHelp.text = presentText
        emojiSymbol.text = emoji
        pageControl.numberOfPages = numberOfPage
        pageControl.currentPage = currentPage
        
        
    }
    
}
 
