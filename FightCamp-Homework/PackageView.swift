//
//  PackageView.swift
//  FightCamp-Homework
//
//  Created by Valerie Don on 9/16/20.
//  Copyright © 2020 Alexandre Marcotte. All rights reserved.
//

import UIKit

class PackageView: UIView {

    var selectedThumbnail = UIButton()

    var packageTypeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    var thumbnail1: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.thumbnailBorder(selected: true).cgColor
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return button
    }()

    var thumbnail2: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return button
    }()

    var thumbnail3: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return button
    }()

    var thumbnail4: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return button
    }()

    var imageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 4
        stackView.layoutIfNeeded()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    var whatsIncludedLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var priceLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .body
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var viewPackageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .brandRed
        button.layer.cornerRadius = 4
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.brandRed, for: .highlighted)
        button.isEnabled = true
        button.titleLabel?.font = .button
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .primaryBackground
        configurePackageTypeLabel()
        configureDescriptionLabel()
        configureHeroImageView()
        configureImageStackView()
        configureWhatsIncludedLabel()
        configurePriceLabel()
        configureViewPackageButton()
        selectedThumbnail = thumbnail1
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configurePackageTypeLabel() {
        addSubview(packageTypeLabel)
        NSLayoutConstraint.activate([
            packageTypeLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24),
            packageTypeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            packageTypeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
        ])
        packageTypeLabel.font = .title
        packageTypeLabel.textColor = .brandRed
    }

    func configureDescriptionLabel() {
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: packageTypeLabel.bottomAnchor, constant: 24),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
        ])
        descriptionLabel.font = .body
    }

    func configureHeroImageView() {
        addSubview(heroImageView)
        NSLayoutConstraint.activate([
            heroImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 24),
            heroImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            heroImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            heroImageView.heightAnchor.constraint(equalToConstant: 240)
        ])
    }

    func configureImageStackView() {
        addSubview(imageStackView)
        imageStackView.addArrangedSubview(thumbnail1)
        imageStackView.addArrangedSubview(thumbnail2)
        imageStackView.addArrangedSubview(thumbnail3)
        imageStackView.addArrangedSubview(thumbnail4)
        NSLayoutConstraint.activate([
            imageStackView.topAnchor.constraint(equalTo: heroImageView.bottomAnchor, constant: 4),
            imageStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            imageStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            imageStackView.heightAnchor.constraint(equalToConstant: 66.67)
        ])
        thumbnail1.addTarget(self, action: #selector(thumbnail1DidPress), for: .touchUpInside)
        thumbnail2.addTarget(self, action: #selector(thumbnail2DidPress), for: .touchUpInside)
        thumbnail3.addTarget(self, action: #selector(thumbnail3DidPress), for: .touchUpInside)
        thumbnail4.addTarget(self, action: #selector(thumbnail4DidPress), for: .touchUpInside)
    }

    func configureWhatsIncludedLabel() {
        addSubview(whatsIncludedLabel)
        NSLayoutConstraint.activate([
            whatsIncludedLabel.topAnchor.constraint(equalTo: imageStackView.bottomAnchor, constant: 24),
            whatsIncludedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            whatsIncludedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            whatsIncludedLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 100)
        ])
    }

    func configurePriceLabel() {
        addSubview(priceLabel)
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: whatsIncludedLabel.bottomAnchor, constant: 24),
            priceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            priceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
        ])
    }

    func configureViewPackageButton() {
        addSubview(viewPackageButton)
        NSLayoutConstraint.activate([
            viewPackageButton.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 24),
            viewPackageButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            viewPackageButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            viewPackageButton.heightAnchor.constraint(equalToConstant: 40),
            viewPackageButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -24)
        ])
    }

    @objc func thumbnail1DidPress() {
        heroImageView.image = thumbnail1.imageView?.image
        thumbnail1.layer.borderColor = UIColor.thumbnailBorder(selected: true).cgColor
        selectedThumbnail.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        selectedThumbnail = thumbnail1
    }

    @objc func thumbnail2DidPress() {
        heroImageView.image = thumbnail2.imageView?.image
        thumbnail2.layer.borderColor = UIColor.thumbnailBorder(selected: true).cgColor
        selectedThumbnail.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        selectedThumbnail = thumbnail2
    }

    @objc func thumbnail3DidPress() {
        heroImageView.image = thumbnail3.imageView?.image
        thumbnail3.layer.borderColor = UIColor.thumbnailBorder(selected: true).cgColor
        selectedThumbnail.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        selectedThumbnail = thumbnail3
    }

    @objc func thumbnail4DidPress() {
        heroImageView.image = thumbnail4.imageView?.image
        thumbnail4.layer.borderColor = UIColor.thumbnailBorder(selected: true).cgColor
        selectedThumbnail.layer.borderColor = UIColor.thumbnailBorder(selected: false).cgColor
        selectedThumbnail = thumbnail4
    }
}
