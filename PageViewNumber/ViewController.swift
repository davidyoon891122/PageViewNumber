//
//  ViewController.swift
//  PageViewNumber
//
//  Created by David Yoon on 2021/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblNumber: UILabel!
    @IBOutlet var pageView: UIPageControl!
    
    let numberList = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageView.numberOfPages = numberList.count
        pageView.currentPage = 0
        pageView.pageIndicatorTintColor = UIColor.green
        pageView.currentPageIndicatorTintColor = UIColor.red
        lblNumber.text = String(numberList[0])
        
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        lblNumber.text = String(numberList[pageView.currentPage])
    }
    
}

