//
//  Point.swift
//  SierpinskiSwift
//
//  A tuple representing a basic point in two-dimensional space.
//

public typealias Point = (x: Int, y: Int)

// The midpoint between two Points.
public func midpoint(_ p1: Point, _ p2: Point) -> Point {
    let newPoint : Point = (((p1.x + p2.x) / 2), ((p1.y + p2.y) / 2))
    return newPoint
}
