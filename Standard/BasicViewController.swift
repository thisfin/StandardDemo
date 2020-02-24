//
//  BasicViewController.swift
//  Standard
//
//  Created by 李毅 on 2020/2/14.
//  Copyright © 2020 文优. All rights reserved.
//

import UIKit

class BasicViewController: BaseViewController {
    public var pageSingle = false
    public var pageIgnore = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension BasicViewController: MixCommonParameterProtocol {}

extension BasicViewController: RouterViewControllerProtocol {}

/// 基础公共参数
@objc public protocol MixCommonParameterProtocol {
    var pageSingle: Bool { get set }
    var pageIgnore: Bool { get set }
}
