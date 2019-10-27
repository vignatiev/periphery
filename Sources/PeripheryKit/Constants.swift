import Foundation
import PathKit

var PeripheryIdentifier = "com.peripheryapp.periphery"

func PeripheryCachePath() throws -> Path {
    let url = try FileManager.default.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    return Path(url.appendingPathComponent(PeripheryIdentifier).path)
}
