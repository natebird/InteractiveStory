//
//  PageController.swift
//  InteractiveStory
//
//  Created by Nate Bird on 6/15/17.
//  Copyright © 2017 Birdhouse. All rights reserved.
//

import UIKit

class PageController: UIViewController {

    var page: Page?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(page: Page) {
        self.page = page
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
