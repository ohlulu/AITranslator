//
//  Copyright © 2023 Ohlulu. All rights reserved.
//

import Foundation

public protocol Translate {
    func translate(from source: Language, to target: Language) async throws -> String
}
