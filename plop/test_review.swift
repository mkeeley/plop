//
//  test_review.swift
//  plop
//
//  Created by Mickey Keeley on 3/9/15.
//  Copyright (c) 2015 Mickey Keeley. All rights reserved.
//

import Foundation

func test_reviews() -> Int {
    println("testing reviews");
    var new_rev = Review(details: "", id: "0", clean: 0.0, space: 0.0, feat: 0.0);
    
    // boundary testing for clean, space, and feat
    new_rev.editRev("", clean: 0, space: 0.0, feat: 0.0);
    println("clean boundary: \(new_rev.getClean())");
    new_rev.editRev("", clean: 5, space: 0.0, feat: 0.0);
    println("clean boundary: \(new_rev.getClean())");
    
    // update description
    new_rev.editRev("new description")
    
    // test getting variables
    let test_c = 1.0;
    let test_s = 1.0;
    let test_f = 1.0;
    
    new_rev.editRev("", clean: test_c, space: test_s, feat: test_f);
    
    assert(test_c == new_rev.getClean());
    assert(test_s == new_rev.getSpace());
    assert(test_f == new_rev.getFeat());
    println("\tclean: \(new_rev.getClean())");
    println("\tspace: \(new_rev.getSpace())");
    println("\tfeatr: \(new_rev.getFeat())");
    
    return 1;
}