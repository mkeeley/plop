//
//  restroom.swift
//  plop
//
//  Created by Mickey Keeley on 3/5/15.
//  Copyright (c) 2015 Mickey Keeley. All rights reserved.
//

import Foundation

class Restroom {
    var revs:     [Review] = [];
    var loc:      (Double, Double) = (0, 0);
    var info:     String?;
    var name:     String!;
    var avgClean: Double = 0;
    var avgSpace: Double = 0;
    var avgFeat:  Double = 0;
    
    func addRev(rev: Review) {
        revs.append(rev);
        computeAvg();
    }
    
    func remRev(id: String) -> Review {
        var pos: Int! = find(revs.map {$0.id}, id);
        var rev = revs.removeAtIndex(pos);
        computeAvg();
        return rev;
    }
    
    func getRev(id: String) -> Review {
        var pos: Int! = find(revs.map {$0.id}, id);
        return revs[pos];
    }
    
    func editLoc(loc: (Double, Double)) {
        self.loc = loc;
    }
    
    func getLoc() -> (Double, Double) {
        return self.loc;
    }
    
    func getAvg() -> (Double, Double, Double) {
        return (avgClean, avgSpace, avgFeat);
    }
    
    func computeAvg() {
        let count = Double(revs.count);
        
        avgClean = revs.map {$0.clean}.reduce (0, +);
        avgSpace = revs.map {$0.space}.reduce (0, +);
        avgFeat  = revs.map {$0.feat}.reduce (0, +);
        avgClean /= count;
        avgSpace /= count;
        avgFeat /= count;
    }
    
    init (rev: Review, loc: (Double, Double), info: String, name:String) {
        revs.append(rev);
        self.name = name;
        self.loc = loc;
        self.info = info;
    }
}