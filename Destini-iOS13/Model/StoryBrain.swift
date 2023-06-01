
    import Foundation
    import UIKit
    struct StoryBrain {
        var imageSet = ["Delta","Ellipse","Star","Rectangle"]
        func uniqueRandomNumber() -> Int {
            var uniqueNumbers = Set<Int>()
            let maxNumber = 3
            while uniqueNumbers.count < maxNumber {
                uniqueNumbers.insert(Int.random(in: 1...maxNumber))
            }
            return uniqueNumbers.removeFirst()
        }
        let imageCorrect = ["<UIImage:0x600002b60360 named(main: Rectangle) {17, 17} renderingMode=automatic(original)>", "<UIImage:0x600002b601b0 named(main: Star) {20, 17} renderingMode=automatic(original)>", "<UIImage:0x600002b603f0 named(main: Ellipse) {17, 17} renderingMode=automatic(original)>", "<UIImage:0x600002b60120 named(main: Delta) {17.666666666666668, 16.666666666666668} renderingMode=automatic(original)>"]

        var array = [String]()
        var imageSetNew = [String]()
        
      
        
    }
    
    
