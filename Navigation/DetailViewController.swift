//
//  DetailViewController.swift
//  Navigation
//
//  Created by 503-03 on 2018. 11. 8..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //이전 뷰 컨트롤러에서 넘겨받을 데이터
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //넘겨받은 데이터로 self 타이틀 설정
        self.title = name
    }
    
}
