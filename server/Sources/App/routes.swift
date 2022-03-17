import Vapor
import FluentKit


var xd: [Int] = []

func routes(_ app: Application) throws {
    
    app.post("numbers") { req -> String in
        
        let number = try req.content.decode(Number.self)
        if number.number < 0 {
            return "Number < 0. Try 0...N."
        } else {
            if xd.contains(number.number) {
                return "Error #1. Nums already exists - \(xd)"
            } else if xd.contains(number.number + 1) {
                return "Error #2. Number + 1 already exists, this num - \(number.number + 1)"
            } else {
                xd.append(number.number)
                number.create(on: req.db)
            }
        }
        
        return String(number.number+1)
    }
}
