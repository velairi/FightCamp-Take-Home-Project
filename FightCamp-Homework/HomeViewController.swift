//
//  HomeViewController.swift
//  FightCamp-Homework
//
//  Created by Valerie Don on 9/16/20.
//  Copyright © 2020 Alexandre Marcotte. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var packageView = PackageView()
    var scrollView = UIScrollView()

    let scrollContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func loadView() {
        super.loadView()
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 3)
        scrollView.autoresizingMask = .flexibleHeight
        scrollView.contentOffset.x = 0
        view.addSubview(scrollView)
        scrollView.addSubview(scrollContentView)
        view.backgroundColor = .secondaryBackground
        addPackageView1()
    }

    func addPackageView1() {
        packageView.backgroundColor = .white
        packageView.translatesAutoresizingMaskIntoConstraints = false
        packageView.layer.cornerRadius = 12
        view.addSubview(packageView)
        NSLayoutConstraint.activate([
            packageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 24),
            packageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24),
            packageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -24),
            packageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -24)
        ])
    }
}
