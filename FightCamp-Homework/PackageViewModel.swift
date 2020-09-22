//
//  PackageViewModel.swift
//  FightCamp-Homework
//
//  Created by Valerie Don on 9/22/20.
//  Copyright © 2020 Alexandre Marcotte. All rights reserved.
//

import UIKit

class PackageViewModel {

    var packages = [Package]()

    func parsePackagesJSON(_ data: Data) {
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let object = try decoder.decode([Package].self, from: data)
            packages = object
        } catch {
            print("ERROR", error)
        }
    }

    func fetchData(_ fileName: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                print("MY DATA", data)
                parsePackagesJSON(data)
            } catch {
                // Handle error here
            }
        }
    }
}
