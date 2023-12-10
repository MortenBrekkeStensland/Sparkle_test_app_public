//
//  ViewController.swift
//  SparkleTestApp
//
//  Created by user on 08.12.2023.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var versionTextField: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setVersion()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    private func setVersion() {
        guard let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String, let buildNumber = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] else {
            return
        }
        versionTextField.stringValue = "Sparkle Test Application version: \(version) (\(buildNumber))"
    }

}

