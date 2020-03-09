//
//  EndViewController.swift
//  Standard
//
//  Created by 李毅 on 2020/3/9.
//  Copyright © 2020 文优. All rights reserved.
//

import UIKit

class EndViewController: AbastractViewController<TestModel> {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}

class TestModel: ViewModel {
}

open class ViewModel {
    open var str: String?
}

/// 抽象VC
class AbastractViewController<V: ViewModel>: PropertyViewController {
    var vm: V?
    var keyWord: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        print(keyWord ?? "")
    }
}
