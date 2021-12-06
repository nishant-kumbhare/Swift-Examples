//
//  NKConfigurations.swift
//  NKEnviornments
//
//  Created by Nishant Kumbhare on 02/12/21.
//

import Foundation

final class NKConfigurations {

    enum Key: String {
        case apiKey = "kApiKey"
        case baseURL = "kBaseURL"
    }

    static func getValueFor(_ key: Key) -> String? {
        guard let dictionary = Bundle.main.object(forInfoDictionaryKey: "CustomConfigurations") as? [String: String] else { return nil }
        return dictionary[key.rawValue]
    }
}
