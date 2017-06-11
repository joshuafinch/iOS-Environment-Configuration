//
//  Config.swift
//  Sample
//
//  Created by Joshua Finch on 10/06/2017.
//  Copyright © 2017 Joshua Finch. All rights reserved.
//

import Foundation

class Config {

    let baseUrl: URL

    init?(baseUrlString: String) {

        guard let baseUrl = URL(string: baseUrlString) else {
            return nil
        }

        self.baseUrl = baseUrl
    }

}
