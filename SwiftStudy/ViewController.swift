//
//  ViewController.swift
//  SwiftStudy
//
//  Created by Harwin on 2020/5/29.
//  Copyright © 2020 WoQi. All rights reserved.
//

import UIKit

typealias Audio = UInt16

enum Week {
    case Monday, Tuesday, Wedensday, Thursday, Friday, Saturday, Sunday
}

class ViewController: UIViewController, ProtocolA, UITableViewDataSource {
    var array: Array<Any>?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        cell?.textLabel?.text = "\(array?[indexPath.row])"
        return cell!
    }

    func method1() -> Int {
        print("代理方法method1")
        return 1
    }

    func method2() -> Int {
        print("代理方法method2")
        return 1
    }

    var delegate: ProtocolA?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white

        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        print(array)

        let range = ...5

        var b = B()
        b.callback(10)
        print(b.move(x: 20))

        delegate = self

        let tabView = UITableView(frame: view.bounds, style: .plain)
        view.addSubview(tabView)
        tabView.dataSource = self

        self.array = [1, 3, 5, 7, 9]
        tabView.reloadData()

        
        let dict = Dictionary<String, Any>.init(minimumCapacity: 3)


    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        testInlineFunc()
    }

    // 测试内联函数
//    @inline(never)
    func testInlineFunc() {
        print("A")
    }
}

// 单继承
// 协议

class A {
}

class B: A {
    
    
    var callback = { (x: Int) -> Int in
        print("Hello \(x)")
        return 1
    }

    func move(x: Int) -> Int {
        x << 2
    }
}

@objc protocol ProtocolA {
    // 默认是必须要实现的方法
    // 协议方法不能拥有函数体
    // “可选”方法只能应用于@objc协议的成员

    @available(iOS 2.0, *)
    func method1() -> Int

    @objc optional func method2() -> Int
}
