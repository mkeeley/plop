//
//  review.swift
//  plop
//
//  Created by Mickey Keeley on 3/5/15.
//  Copyright (c) 2015 Mickey Keeley. All rights reserved.
//

import Foundation

class Review {
    var details: String;
    var id:    String;
    var clean: Double = 0;
    var space: Double = 0;
    var feat:  Double = 0;
    
    init(details: String, id: String, clean: Double, space: Double, feat: Double) {
        self.details    = details;
        self.id         = id;
        self.clean      = clean;
        self.space      = space;
        self.feat       = feat;
    }
    
    func editRev(details: String, clean: Double, space: Double, feat: Double) {
        if(!details.isEmpty) {
            self.details = details;
        }
        self.clean  = clean;
        self.space  = space;
        self.feat   = feat;
    }
    
    func getClean() -> Double {
        return self.clean;
    }
    
    func getSpace() -> Double {
        return self.space;
    }
    
    func getFeat() -> Double {
        return self.feat;
    }
    func getDetails() -> String {
        return self.details;
    }

    func getId() -> String {
        return self.id;
    }
}