//
//  ViewController.swift
//  Test
//
//  Created by Md Faysal Ahmed on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var imageVeiw: UIImageView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var circelVeiw: UIView!
    @IBOutlet weak var whiteCircelView: UIView!
    
    var name = ["a", "b", "c", "d"]
    var like = ["100", "200", "300", "400"]
    var imge = ["a", "b", "a", "b"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = #colorLiteral(red: 0.9191628098, green: 0.9540745616, blue: 0.9878287911, alpha: 1) /* #f3f3fc */


        //btn5.layer.cornerRadius = 30
        
        //setupTableView()
        
//        if let url = URL(string: "YOUR-IMAGE-URL-HERE") {
//            do{
//                let data = try Data(contentsOf: url)
//                self.imageVar = UIImage(data: data)
//                if let myImage: UIImage = self.imageVar {
//                    YOUR-BUTTON-NAME.setImage(myImage, for: .normal)
//                }
//            }catch {
//                print("error")
//            }
//        }
        
        
//        view1.layer.cornerRadius = 8
//        view2.layer.cornerRadius = 8
//        view3.layer.cornerRadius = 8
//        view3.layer.cornerRadius = 8
//        view4.layer.cornerRadius = 8
//        view5.layer.cornerRadius = 8
//        view6.layer.cornerRadius = 8
//        imageVeiw.layer.cornerRadius = 8
        setupSlider()
        
        whiteCircelView.layer.cornerRadius = whiteCircelView.frame.size.width / 2
        
    }
    
    func setupTableView(){
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    
    func setupSlider(){
        // init slider view
        let frame = CGRect(x: 5, y: 0, width: circelVeiw.frame.width-8, height: circelVeiw.frame.height+100)
        let circularSlider = CircularSlider(frame: frame)
        
        // setup target to watch for value change
        //circularSlider.addTarget(self, action: #selector(MainEditViewController.valueChanged(_:)), for: UIControl.Event.valueChanged)
        
        // setup slider defaults
        circularSlider.maximumAngle = 280
        circularSlider.unfilledArcLineCap = .round
        circularSlider.filledArcLineCap = .round
        circularSlider.handleType = .bigCircle
        circularSlider.currentValue = 1.0
        circularSlider.lineWidth = 25
        circularSlider.labelDisplacement = -12.0
        circularSlider.innerMarkingLabels = ["0.0", "1.0", "2.0", "3.0", "4.0", "5.0"]
        
        // add to view
        circelVeiw.addSubview(circularSlider)
        // NOTE: create and set a transform to rotate the arc so the white space is centered at the bottom
        circularSlider.transform = circularSlider.getRotationalTransform()
    }
    
//    @objc func valueChanged(_ slider: CircularSlider) {
//        sliderValue.text = String(format: "%.1f", slider.currentValue)
//        print(String(format: "%.1f", slider.currentValue))
//        speed = Double(slider.currentValue)
//    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.profileName.text = name[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.profile = name[indexPath.row]
        vc.img = UIImage(named: imge[indexPath.row])!
        vc.likee = like[indexPath.row]
        //vc.navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
