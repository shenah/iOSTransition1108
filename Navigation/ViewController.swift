//
//  ViewController.swift
//  Navigation
//
//  Created by 503-03 on 2018. 11. 8..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func moveDetail(_ sender: Any) {
        //navegation
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        //데이터 저장
        detailViewController.name = "Detail"
        
        //self.navigationController 속성에는 owning navigation controller가 있습니다.
        self.navigationController?.pushViewController(detailViewController, animated: true)
        
    }
    
    
    //세그웨이를 이용해서 이동할 때 호출되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        detailViewController.name = "detail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

