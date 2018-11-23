//
//  DetailViewController.swift
//  Navigation
//
//  Created by 503-16 on 2018. 11. 8..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //이전 뷰 컨트롤러에서 넘겨 받을 데이터
    var category : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //타이틀 설정
        self.title = category
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
