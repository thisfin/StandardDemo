//
//  PropertyViewController.swift
//  Standard
//
//  Created by 李毅 on 2020/2/14.
//  Copyright © 2020 文优. All rights reserved.
//

import UIKit

protocol PropertyProtocol {
    var name: String? { get set }
    var age: Int? { get set }
}

class PropertyViewController: BasicViewController {
    @objc var aaa: String?
    var name: String?
    var age: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("aaa:\t\(aaa ?? "")")
        print("name:\t\(name ?? "")")
        print("age:\t\(age != nil ? String(age!) : "")")
        print("pageSingle:\t\(String(pageSingle))")
        print("pageIgnore:\t\(String(pageIgnore))")
    }

//    var isLightStatusBar: Bool = false {
//        didSet {
//            setNeedsStatusBarAppearanceUpdate()
//        }
//    }
}

extension PropertyViewController: PropertyProtocol {}

// extension PropertyViewController {
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        if isLightStatusBar {
//            return .lightContent
//        } else {
//            if #available(iOS 13.0, *) {
//                return .darkContent
//            } else {
//                return .default
//            }
//        }
//    }
//
//    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
//        return .slide
//    }
// }
