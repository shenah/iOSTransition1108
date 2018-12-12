//
//  ViewController.swift
//  TapBar
//
//  Created by 503-03 on 2018. 11. 8..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIViewController에 var tabBarController 속성이 있다.
        //자신이 속한 Tab Bar Controller 입니다
        self.tabBarController?.delegate = self
    }
}

extension ViewController : UITabBarControllerDelegate{
    //탭 바의 item 항목을 선택한 후 호출되는 메소드
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){
        print("\(tabBarController.selectedIndex)번째 탭바 뷰 컨트롤러를 선택")
    }
}

