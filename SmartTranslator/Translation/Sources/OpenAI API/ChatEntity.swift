//
//  Copyright © 2023 Ohlulu. All rights reserved.
//

import Foundation

struct ChatResult: Decodable {
    let choices: [Choice]
    
    struct Choice: Decodable {
        let message: Message
        
        struct Message: Decodable {
            public let context: String
        }
        
    }
}
