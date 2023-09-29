//
//  Copyright © 2023 Ohlulu. All rights reserved.
//

import Foundation

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

func anyPath() -> String {
    "/path/v1"
}

func anyHeaders() -> [String: String] {
    ["field": "value", "Authorization": "Bearer qqq"]
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    Data("any data".utf8)
}
