//
//  Copyright © 2023 Ohlulu. All rights reserved.
//

import Foundation

public final class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    private let baseURL: URL
    private let headers: [String: String]?
    
    public init(session: URLSession, baseURL: URL, headers: [String: String]? = nil) {
        self.session = session
        self.baseURL = baseURL
        self.headers = headers
    }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    private struct URLSessionTaskWrapper: HTTPClientTask {
        let wrapped: URLSessionTask
        
        func cancel() {
            wrapped.cancel()
        }
    }
    
    public func post(_ path: String, body: Data, completion: @escaping (HTTPClient.Result) -> Void) -> HTTPClientTask {
        var request = buildRequest(path: path)
        request.httpBody = body
        
        let task = session.dataTask(with: request) { data, response, error in
            completion(Result {
                if let error = error {
                    throw error
                } else if let data = data, let response = response as? HTTPURLResponse {
                    return (data, response)
                } else {
                    throw UnexpectedValuesRepresentation()
                }
            })
        }
        task.resume()
        return URLSessionTaskWrapper(wrapped: task)
    }
}

private extension URLSessionHTTPClient {
    func buildRequest(path: String) -> URLRequest {
        let url = baseURL.appending(path: path)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        return request
    }
}
