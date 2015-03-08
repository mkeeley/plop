//
//  RestroomManager.swift
//  plop
//
//  Created by Mickey Keeley on 3/5/15.
//  Copyright (c) 2015 Mickey Keeley. All rights reserved.
//

import Foundation

class RestroomManager {
    var restrooms: [Restroom] = [];
    
    func addRestroom(name: String, loc: (Double, Double), info: String, rev:Review) {
        var restroom = Restroom(rev: rev, loc: loc, info: info, name: name);
        restrooms.append(restroom);
    }
    
    func remRestroom(id: String) -> Restroom {
        var pos: Int! = find(restrooms.map {$0.name}, id);
        return restrooms.removeAtIndex(pos);
    }
}