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

        let package = viewModel.packages[0]
        packageView.packageTypeLabel.text = package.title.uppercased()
        packageView.descriptionLabel.text = package.desc.capitalized

        //Add images to buttons and hero imageView
        packageView.heroImageView.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView.thumbnail1.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView.thumbnail2.load(URL(string: "\(package.thumbnailUrls[1])")!)
        packageView.thumbnail3.load(URL(string: "\(package.thumbnailUrls[2])")!)
        packageView.thumbnail4.load(URL(string: "\(package.thumbnailUrls[3])")!)

        packageView.whatsIncludedLabel.configureWhatsIncludedLabel(package.included, excludedText: package.excluded)

        packageView.priceLabel.configurePriceLabel(package.price)
        packageView.viewPackageButton.setTitle("\(package.action)".capitalized, for: .normal)
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

        let package = viewModel.packages[1]
        packageView2.packageTypeLabel.text = package.title.uppercased()
        packageView2.descriptionLabel.text = package.desc.capitalized

        //Add images to buttons and hero imageView
        packageView2.heroImageView.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView2.thumbnail1.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView2.thumbnail2.load(URL(string: "\(package.thumbnailUrls[1])")!)
        packageView2.thumbnail3.load(URL(string: "\(package.thumbnailUrls[2])")!)
        packageView2.thumbnail4.load(URL(string: "\(package.thumbnailUrls[3])")!)

        packageView2.whatsIncludedLabel.configureWhatsIncludedLabel(package.included, excludedText: package.excluded)


        packageView2.priceLabel.configurePriceLabel(package.price)
        packageView2.viewPackageButton.setTitle("\(package.action)".capitalized, for: .normal)
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

        let package = viewModel.packages[2]
        packageView3.packageTypeLabel.text = package.title.uppercased()
        packageView3.descriptionLabel.text = package.desc.capitalized

        //Add images to buttons and hero imageView
        packageView3.heroImageView.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView3.thumbnail1.load(URL(string: "\(package.thumbnailUrls[0])")!)
        packageView3.thumbnail2.load(URL(string: "\(package.thumbnailUrls[1])")!)
        packageView3.thumbnail3.load(URL(string: "\(package.thumbnailUrls[2])")!)
        packageView3.thumbnail4.load(URL(string: "\(package.thumbnailUrls[3])")!)

        packageView3.whatsIncludedLabel.configureWhatsIncludedLabel(package.included, excludedText: package.excluded)

        packageView3.priceLabel.configurePriceLabel(package.price)
        packageView3.viewPackageButton.setTitle("\(package.action)".capitalized, for: .normal)
    }
}

extension UILabel {

    func configurePriceLabel(_ price: Int) {
        let attr1 = [NSAttributedString.Key.font: UIFont.body]
        let str1 = NSMutableAttributedString(string:"One Time Payment")
        str1.addAttributes(attr1, range: NSRange(location: 0, length: str1.length))

        let attr2 = [NSAttributedString.Key.font: UIFont.price]
        let str2 = NSMutableAttributedString(string:"\n $\(price)")
        str2.addAttributes(attr2, range: NSRange(location: 0, length: str2.length))

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8

        str1.append(str2)
        str1.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: str1.length))

        self.attributedText = str1
        self.textAlignment = .center
    }

    func configureWhatsIncludedLabel(_ includedText: [String], excludedText: [String]?) {
        let includedStr = includedText.joined(separator: "\n").capitalized
        let excludedStr = excludedText?.joined(separator: "\n").capitalized ?? ""

        let fontTypeAttr1 = [NSAttributedString.Key.font: UIFont.body]
        let str1 = NSMutableAttributedString(string: includedStr)
        str1.addAttributes(fontTypeAttr1, range: NSRange(location: 0, length: str1.length))

        let str2 = NSMutableAttributedString(string: "\n\(excludedStr)")
        str2.addAttributes(fontTypeAttr1, range: NSRange(location: 0, length: str2.length))

        //Change color
        str2.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.disabledLabel, range: NSRange(location: 0, length: str2.length))

        //Add Strikethrough
        str2.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSRange(location: 0, length: str2.length))

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4

        str1.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, str1.length))

        str1.append(str2)
        self.attributedText = str1
        self.textAlignment = .left
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

extension UIButton {
    func load(_ url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.setImage(image, for: .normal)
                    }
                }
            }
        }
    }
}
