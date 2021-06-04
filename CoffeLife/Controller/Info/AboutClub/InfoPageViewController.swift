//
//  InfoPageViewController.swift
//  CoffeLife
//
//  Created by mac on 02.06.2021.
//

import UIKit

class InfoPageViewController: UIPageViewController {
    
    let imageName = ["pagination1", "pagination2", "pagination3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self

        if let contentVC = showContentViewController(index: 0 ) {
            setViewControllers([contentVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showContentViewController(index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < imageName.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(identifier: "contentVC") as? ContentViewController else { return nil }
        
        
        contentVC.image = imageName[index]
        contentVC.currentPage = index
        contentVC.numberOfPage = imageName.count
        
        return contentVC
        
    }
}

extension InfoPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return showContentViewController(index: pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return showContentViewController(index: pageNumber)
    }
    
    
}
