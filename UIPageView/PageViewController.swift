//
//  PageViewController.swift
//  UIPageView
//
//  Created by Дмитрий Данилин on 25.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    let presentTextArray = [
        "Первая страница презентации, рассказывающая о том, что наше приложение из себя предстваляет",
        "Вторая страница презентации, рассказывает о какой то удобной фишке приложения",
        "Третья страница презентации тоже рассказывает о главных фишках",
        "Последняя страница, с напутствием в добрый путь",
        ""
    ]
    
    let emojiArray = ["🤓", "✌🏻", "😳", "😷", ""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Назначаем класс делегатом протокола
        dataSource = self
        
        // Отображаем страницу презентации при загрузке
        if let contentViewController = showViewControllerAtIndex(0){
            // Метод, создающий массив из вью контроллеров
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    // Метод, для отображения презентации текста из массива, в зависимости от номера страницы.
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil}
        guard index < presentTextArray.count else {
            // Закрываем презентацию после прочтения последнего слайда
            dismiss(animated: true, completion: nil)
            return nil}
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "Content") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentTextArray[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPage = presentTextArray.count
        
        return contentViewController
        
    }
}

// Расширение для управления перелистывания страниц
extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
