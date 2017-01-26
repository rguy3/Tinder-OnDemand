//
//  Date.swift
//  tinder_ondemand
//
//  Created by Blu on 1/25/17.
//  Copyright © 2017 Blu. All rights reserved.
//

import Foundation
import UIKit

class Date {
    private var _name: String!
    private var _age: Int!
    private var _pic: [UIImage]
    private var _location: String!
    private var _friends: Int!
    private var _book: Int!
    
    var name: String! {
        return _name
    }
    
    var age: Int! {
        return _age
    }
    var pic: [UIImage] {
        return _pic
    }
    
    var location: String! {
        return _location
    }
    
    var friends: Int! {
        return _friends
    }
    
    var book: Int! {
        return _book
    }
    
    init(name: String, age: Int, pics: [UIImage], location: String!, friends: Int, book: Int) {
        self._name = name
        self._age = age
        self._pic = pics
        self._location = location
        self._friends = friends
        self._book = book
    }
    
}
