//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    // YOUR CODE HERE
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    var content = ""
    public init(width: UInt, height: UInt) {
        // YOUR CODE HERE
        content += "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
        content += "<svg version=\"1.1\" baseProfile=\"full\" width=\"\(width)\" height=\"\(height)\" xmlns=\"http://www.w3.org/2000/svg\">\n"
    }
    
    public func addLine(p1: Point, p2: Point, color: String) {
        // YOUR CODE HERE
        content += String("<line x1=\"\(p1.x)\" y1=\"\(p1.y)\" x2=\"\(p2.x)\" y2=\"\(p2.y)\" stroke=\"\(color)\" />\n")
    }
    
    // Write the SVG file to disk
    public func write(filePath: String) {
        content += "</svg>\n"
        do {
            try content.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error writing to file")
        }
    }
}
