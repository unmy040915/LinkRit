enum APIError: Error {
    case missingBaseURL
    case malformedURL
    case invalidResponse(statusCode: Int)
    case decoding(Error)
    case encoding(Error)
}
