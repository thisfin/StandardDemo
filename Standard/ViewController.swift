//
//  ViewController.swift
//  Standard
//
//  Created by 李毅 on 2020/1/13.
//  Copyright © 2020 文优. All rights reserved.
//

import SnapKit
import Then
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue

        _ = UIButton(type: .roundedRect).then {
            $0.setTitle("click", for: .normal)
            $0.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
            view.addSubview($0)
            $0.snp.makeConstraints { maker in
                maker.left.equalToSuperview().offset(10)
                maker.top.equalToSuperview().offset(100)
            }
        }
    }
}

@objc extension ViewController {
    func buttonClicked(_ sender: Any) {
        guard let cls = NSClassFromString("Standard.PropertyViewController") as? UIViewController.Type else {
            return
        }

        if let controller = cls.init() as? RouterViewControllerProtocol {
            controller.baseParameters = ["name": "wenyou", "age": 18, "aaa": "b", "pageSingle": true]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
