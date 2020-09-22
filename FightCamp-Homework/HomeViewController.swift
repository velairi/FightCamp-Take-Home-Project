//
//  HomeViewController.swift
//  FightCamp-Homework
//
//  Created by Valerie Don on 9/16/20.
//  Copyright © 2020 Alexandre Marcotte. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var viewModel = PackageViewModel()
    var scrollView = UIScrollView()
    let scrollContentView = UIView()
    let packageView = PackageView()
    let packageView2 = PackageView()
    let packageView3 = PackageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchData("packages")
        print(viewModel.packages)

        configureScrollView()
        configurePackageView1()
        configurePackageView2()
        configurePackageView3()
    }

    func configureScrollView() {
        scrollView.backgroundColor = .secondaryBackground
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false;

        //Constrain scroll view
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true;
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true;
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true;
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true;


        //add scrollContentView
        scrollView.addSubview(scrollContentView)
        scrollContentView.translatesAutoresizingMaskIntoConstraints = false

        //constrain scrollContentView to scrollView
        scrollContentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true;
        scrollContentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true;
        scrollContentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true;
        scrollContentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true;
    }

    func configurePackageView1() {
        //add packageView to scrollContentView
        scrollContentView.addSubview(packageView)
        packageView.translatesAutoresizingMaskIntoConstraints = false
        packageView.layer.cornerRadius = 12
        packageView.leadingAnchor.constraint(equalTo: scrollContentView.leadingAnchor, constant: 24).isActive = true;
        packageView.topAnchor.constraint(equalTo: scrollContentView.topAnchor).isActive = true;
        packageView.trailingAnchor.constraint(equalTo: scrollContentView.trailingAnchor).isActive = true;
        packageView.heightAnchor.constraint(equalToConstant: view.frame.height - 72).isActive = true
        packageView.widthAnchor.constraint(equalToConstant: view.frame.width - 48).isActive = true
    }

    func configurePackageView2() {
        //add packageView2 to scrollContentView
        scrollContentView.addSubview(packageView2)
        packageView2.translatesAutoresizingMaskIntoConstraints = false
        packageView2.layer.cornerRadius = 12
        packageView2.topAnchor.constraint(equalTo: packageView.bottomAnchor, constant: 24).isActive = true;
        packageView2.leadingAnchor.constraint(equalTo: scrollContentView.leadingAnchor, constant: 24).isActive = true;
        packageView2.trailingAnchor.constraint(equalTo: scrollContentView.trailingAnchor).isActive = true;
        packageView2.bottomAnchor.constraint(equalTo: scrollContentView.bottomAnchor).isActive = true;
        packageView2.heightAnchor.constraint(equalToConstant: view.frame.height - 72).isActive = true
        packageView2.widthAnchor.constraint(equalToConstant: view.frame.width - 48).isActive = true
    }

    func configurePackageView3() {
        scrollView.addSubview(packageView3)
        packageView3.translatesAutoresizingMaskIntoConstraints = false
        packageView3.layer.cornerRadius = 12
        packageView3.topAnchor.constraint(equalTo: packageView2.bottomAnchor, constant: 24).isActive = true;
        packageView3.leadingAnchor.constraint(equalTo: scrollContentView.leadingAnchor, constant: 24).isActive = true;
        packageView3.trailingAnchor.constraint(equalTo: scrollContentView.trailingAnchor).isActive = true;
        packageView3.bottomAnchor.constraint(equalTo: scrollContentView.bottomAnchor).isActive = true;
        packageView3.heightAnchor.constraint(equalToConstant: view.frame.height - 72).isActive = true
        packageView3.widthAnchor.constraint(equalToConstant: view.frame.width - 48).isActive = true
    }
}

