import Foundation

extension String {
    var embed: String {
        var strings = self.components(separatedBy: "/")
        let videoId = strings.last ?? ""
        strings.removeLast()
        let embedURL = strings.joined(separator: "/") + "/embed/\(videoId)"
        print(embedURL)
        return embedURL
    }
}
