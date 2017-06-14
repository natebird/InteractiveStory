//
//  Page.swift
//  InteractiveStory
//
//  Created by Nate Bird on 6/14/17.
//  Copyright © 2017 Birdhouse. All rights reserved.
//

import Foundation

class Page {
    let story: Story

    // Creates and anoynmous struct
    typealias Choice = (title: String, page: Page)

    var firstChoice: Choice?
    var secondChoice: Choice?

    init(story: Story) {
        self.story = story
    }
}
