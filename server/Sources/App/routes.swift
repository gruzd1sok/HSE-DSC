import Vapor
import FluentKit

func routes(_ app: Application) throws {
    
    app.post("numbers") { req -> String in
        
        let number = try req.content.decode(Number.self)
        if number.number < 0 {
            return "Number < 0. Try 0...N."
        } else {
            if bd.contains(number.number) {
                return "Error #1. Nums already exists."
            } else if bd.contains(number.number + 1) {
                return "Error #2. Number + 1 already exists, this num - \(number.number + 1)"
            } else {
                bd.append(number.number)
                number.create(on: req.db)
            }
        }
        
        return String(number.number+1)
    }
}
