//
//  DetailViewController.swift
//  SplitView
//
//  Created by 503-03 on 2018. 11. 9..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    //MasterViewController로부터 테이터를 넘겨받을 변수 
    var addr : String?
    
    //MasterView에서 테이블의 항목을 선택하면 호출되는 메소드
    func configureView() {
        // addr 이 없을 때는 더조은 홈페이지 출력
        if addr == nil {
            addr = "http://tjoeun.co.kr"
        }
        let url = URL(string: addr!)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

