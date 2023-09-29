//
//  Copyright © 2023 Ohlulu. All rights reserved.
//

import Foundation

struct ChatParam: Encodable {
    struct Message: Encodable {
        public enum Role: String, Encodable {
            case system
            case user
        }
        let role: Role
        let content: String
    }
    
    let model: String
    let messages: [Message]
}
