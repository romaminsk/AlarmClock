//
//  ViewController.swift
//  AlarmClock
//
//  Created by Roma on 20.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alarmLabel: UILabel!
    @IBOutlet weak var alarmView: UIView!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var volumeProgress: UIProgressView!
    @IBOutlet weak var alarmDatePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var labelSwitcher: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func volumeSlider(_ sender: Any) {
    }

    @IBAction func volumeTextField(_ sender: Any) {
    }

    @IBAction func setTimeBtn(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let strDate = dateFormatter.string(from: alarmDatePicker.date)
        timeLabel.text = strDate
    }

    @IBAction func labelColorSwitcher(_ sender: Any) {
        switch labelSwitcher.isOn {
        case true:
            timeLabel.backgroundColor = .green
        case false:
            timeLabel.backgroundColor = .orange
        }
    }

    @IBAction func clearBtn(_ sender: Any) {
        timeLabel.text = nil
        labelSwitcher.setOn(true, animated: true);
    }
}

