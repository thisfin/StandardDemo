//
//  BaseViewController.swift
//  Standard
//
//  Created by 李毅 on 2020/2/14.
//  Copyright © 2020 文优. All rights reserved.
//

import HandyJSON
import UIKit

class BaseViewController: UIViewController {
    open var baseParameters: [String: Any]?

    /// 参数解析及 title 显式设值
    open override func viewDidLoad() {
        // 只处理 Swift ViewController
        if let parameterProtocol = self as? RouterViewControllerProtocol, String(reflecting: type(of: self)).contains(".") {
            parameterProtocol.baseParseParameters()
        }

        super.viewDidLoad()
    }
}

extension BaseViewController: HandyJSON {}

extension RouterViewControllerProtocol where Self: BaseViewController {
    /// 基类字典赋值
    func baseParseParameters() {
        if let parameters = self.baseParameters {
            var vSelf = self
            JSONDeserializer.update(object: &vSelf, from: parameters)
        }
    }
}

/// 路由公共
public protocol RouterViewControllerProtocol where Self: UIViewController {
    /// 参数
    var baseParameters: [String: Any]? { get set }
    /// 参数解析
    func baseParseParameters()
}
