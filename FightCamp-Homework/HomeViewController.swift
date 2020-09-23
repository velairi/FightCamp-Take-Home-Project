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

        //TO DO: capitalize package title
        let package = viewModel.packages[0]
        packageView.packageTypeLabel.text = package.title
        packageView.descriptionLabel.text = package.desc

        //Add images to buttons and hero imageView
        packageView.thumbnail1.imageView?.load(URL(string: "package.thumbnailUrl[0]")!)
        packageView.thumbnail2.imageView?.load(URL(string: "package.thumbnailUrl[1]")!)
        packageView.thumbnail3.imageView?.load(URL(string: "package.thumbnailUrl[2]")!)
        packageView.thumbnail4.imageView?.load(URL(string: "package.thumbnailUrl[3]")!)
        packageView.heroImageView.image = packageView.thumbnail1.imageView?.image

        //Add to what's included label
        packageView.whatsIncludedLabel.text = package.included.joined(separator: "\n").capitalized
        if let excluded = package.excluded?.joined(separator: "\n").capitalized {
            packageView.whatsIncludedLabel.text! += excluded
        }

        packageView.priceLabel.text = "One Time Payment \n $\(package.price)"
        packageView.viewPackageButton.titleLabel?.text = package.action
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

        //TO DO: capitalize package title
        let package = viewModel.packages[1]
        packageView2.packageTypeLabel.text = package.title
        packageView2.descriptionLabel.text = package.desc

        //Add images to buttons and hero imageView
        packageView2.thumbnail1.imageView?.load(URL(string: "package.thumbnailUrl[0]")!)
        packageView2.thumbnail2.imageView?.load(URL(string: "package.thumbnailUrl[1]")!)
        packageView2.thumbnail3.imageView?.load(URL(string: "package.thumbnailUrl[2]")!)
        packageView2.thumbnail4.imageView?.load(URL(string: "package.thumbnailUrl[3]")!)
        packageView2.heroImageView.image = packageView.thumbnail1.imageView?.image

        //Add to what's included label
        packageView2.whatsIncludedLabel.text = package.included.joined(separator: "\n").capitalized
        if let excluded = package.excluded?.joined(separator: "\n").capitalized {
            packageView2.whatsIncludedLabel.text! += excluded
        }

        packageView2.priceLabel.text = "One Time Payment \n $\(package.price)"
        packageView2.viewPackageButton.titleLabel?.text = package.action
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

        //TO DO: capitalize package title
        let package = viewModel.packages[2]
        packageView3.packageTypeLabel.text = package.title
        packageView3.descriptionLabel.text = package.desc

        //Add images to buttons and hero imageView
        packageView3.thumbnail1.imageView?.load(URL(string: "package.thumbnailUrl[0]")!)
        packageView3.thumbnail2.imageView?.load(URL(string: "package.thumbnailUrl[1]")!)
        packageView3.thumbnail3.imageView?.load(URL(string: "package.thumbnailUrl[2]")!)
        packageView3.thumbnail4.imageView?.load(URL(string: "package.thumbnailUrl[3]")!)
        packageView3.heroImageView.image = packageView.thumbnail1.imageView?.image

        //Add to what's included label
        packageView3.whatsIncludedLabel.text = package.included.joined(separator: "\n").capitalized
        if let excluded = package.excluded?.joined(separator: "\n").capitalized {
            packageView3.whatsIncludedLabel.text! += excluded
        }

        packageView3.priceLabel.text = "One Time Payment \n $\(package.price)"
        packageView3.viewPackageButton.titleLabel?.text = package.action
    }
}

extension UIImageView {

    func load(_ url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
