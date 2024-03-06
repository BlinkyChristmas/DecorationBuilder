//Copyright © 2024 Charles Kerr. All rights reserved.

import Foundation
import CoreGraphics

enum ColorType:String,Codable {
    case rgb
    case bgr
    case intensity
    case onoff
}

enum DrawType:String, Codable{
    case fill
    case stroke
}

enum PrimitiveType:String,Codable {
    case oval
    case rectangle
    case line
    
}

class Primitive : NSObject, Codable {
    var primitiveType: PrimitiveType = .line
    var colorType: ColorType = .rgb
    var drawType: DrawType = .stroke
    @objc dynamic var size = CGSize(width: 1.0, height: 1.0)
    @objc dynamic var lineWidth = 1.0
    @objc dynamic var scale = 1.0
    @objc dynamic var dataOffset = 0
    @objc dynamic var pattern = [Double]()
    @objc dynamic var label = ""
    @objc dynamic var origin = CGPoint(x: 0.0, y: 0.0)
    
    @objc dynamic var points = [CGPoint]()
    
    init(primitiveType: PrimitiveType = .line, colorType: ColorType = .rgb , drawType: DrawType = .stroke, size: CGSize = CGSize(width: 1.0, height: 1.0), lineWidth: Double = 1.0, scale: Double = 1.0, dataOffset: Int = 0, pattern: [Double] = [Double](), label: String = "", origin: CGPoint = CGPoint(x: 0.0, y: 0.0), points: [CGPoint] = [CGPoint]()) {
        self.primitiveType = primitiveType
        self.colorType = colorType
        self.drawType = drawType
        self.size = size
        self.lineWidth = lineWidth
        self.scale = scale
        self.dataOffset = dataOffset
        self.pattern = pattern
        self.label = label
        self.origin = origin
        self.points = points
        super.init()
    }
}

class Decoration : NSObject,Codable {
    @objc dynamic var primitives:[Primitive] = [Primitive]()
    @objc dynamic var decorations:[Decoration] = [Decoration]()
    @objc dynamic var name = ""
    @objc dynamic var scale = 1.0
    @objc dynamic var origin = CGPoint(x: 0.0, y: 0.0)
    @objc dynamic var dataOffset = 0
}
