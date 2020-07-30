//
//  cakeListTableViewController.swift
//  cakeShop
//
//  Created by 方芸萱 on 2020/7/29.
//

import UIKit
import Foundation

class cakeListTableViewController: UITableViewController {

    @IBOutlet var label: UITableView!
    @IBOutlet weak var tatalPriceLabel: UILabel!
    
    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var countLabel5: UILabel!
    @IBOutlet weak var countLabel6: UILabel!
    @IBOutlet weak var countLabel7: UILabel!
    
    @IBOutlet weak var cakeImage1: UIImageView!
    @IBOutlet weak var cakeImage2: UIImageView!
    @IBOutlet weak var cakeImage3: UIImageView!
    @IBOutlet weak var cakeImage4: UIImageView!
    @IBOutlet weak var cakeImage5: UIImageView!
    @IBOutlet weak var cakeImage6: UIImageView!
    @IBOutlet weak var cakeImage7: UIImageView!
    
    @IBOutlet weak var cakeLabel1: UILabel!
    @IBOutlet weak var cakeLabel2: UILabel!
    @IBOutlet weak var cakeLabel3: UILabel!
    @IBOutlet weak var cakeLabel4: UILabel!
    @IBOutlet weak var cakeLabel5: UILabel!
    @IBOutlet weak var cakeLabel6: UILabel!
    @IBOutlet weak var cakeLabel7: UILabel!
    
    @IBOutlet weak var priceLabel1: UILabel!
    @IBOutlet weak var priceLabel2: UILabel!
    @IBOutlet weak var priceLabel3: UILabel!
    @IBOutlet weak var priceLabel4: UILabel!
    @IBOutlet weak var priceLabel5: UILabel!
    @IBOutlet weak var priceLabel6: UILabel!
    @IBOutlet weak var priceLabel7: UILabel!
    
    struct Cake{
        let name:String
        let picture:String
        let price:Int
        var count = 0
//        let maxmum =  5
    }
//    var cakeInfo = [Cake]()
    var cakeInfo = [
        Cake(name: "布朗尼", picture: "brownie", price: 380),
        Cake(name: "檸檬糖霜蛋糕", picture: "lemon", price: 400),
        Cake(name: "草莓派", picture: "straberry1", price: 550),
        Cake(name: "草莓輕蛋糕", picture: "straberry2", price: 500),
        Cake(name: "草莓千層", picture: "straberry3", price: 800),
        Cake(name: "草莓鮮奶油蛋糕", picture: "straberry4", price: 600),
        Cake(name: "草莓巧克力蛋糕", picture: "straberry5", price: 600),
    ]
    func checkTatalPrice(){
        var tatalPrice = 0
        for i in 0...6{
            tatalPrice += cakeInfo[i].count * cakeInfo[i].price
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        let priceString = formatter.string(from: NSNumber(value: tatalPrice))
        tatalPriceLabel.text = "總金額NT" + priceString!
    }
    func checkCount(){
        countLabel1.text = String("數量：\(cakeInfo[0].count)")
        countLabel2.text = String("數量：\(cakeInfo[1].count)")
        countLabel3.text = String("數量：\(cakeInfo[2].count)")
        countLabel4.text = String("數量：\(cakeInfo[3].count)")
        countLabel5.text = String("數量：\(cakeInfo[4].count)")
        countLabel6.text = String("數量：\(cakeInfo[5].count)")
        countLabel7.text = String("數量：\(cakeInfo[6].count)")
    }
    func checkCountAndPrice(){
        checkCount()
        checkTatalPrice()
    }
    func initCakeLabel(){
        cakeLabel1.text = "\(cakeInfo[0].name)"
        cakeLabel2.text = "\(cakeInfo[1].name)"
        cakeLabel3.text = "\(cakeInfo[2].name)"
        cakeLabel4.text = "\(cakeInfo[3].name)"
        cakeLabel5.text = "\(cakeInfo[4].name)"
        cakeLabel6.text = "\(cakeInfo[5].name)"
        cakeLabel7.text = "\(cakeInfo[6].name)"
    }
    func initPrice(){
//        priceLabel1.text = "NT$" + cakeInfo[0].pric.description
        priceLabel1.text = "NT$\(cakeInfo[0].price)"
        priceLabel2.text = "NT$\(cakeInfo[1].price)"
        priceLabel3.text = "NT$\(cakeInfo[2].price)"
        priceLabel4.text = "NT$\(cakeInfo[3].price)"
        priceLabel5.text = "NT$\(cakeInfo[4].price)"
        priceLabel6.text = "NT$\(cakeInfo[5].price)"
        priceLabel7.text = "NT$\(cakeInfo[6].price)"
    }
    func initImage(){
        cakeImage1.image = UIImage(named: "\(cakeInfo[0].picture)")
        cakeImage2.image = UIImage(named: "\(cakeInfo[1].picture)")
        cakeImage3.image = UIImage(named: "\(cakeInfo[2].picture)")
        cakeImage4.image = UIImage(named: "\(cakeInfo[3].picture)")
        cakeImage5.image = UIImage(named: "\(cakeInfo[4].picture)")
        cakeImage6.image = UIImage(named: "\(cakeInfo[5].picture)")
        cakeImage7.image = UIImage(named: "\(cakeInfo[6].picture)")
    }
    func initial(){
        initImage()
        initCakeLabel()
        initPrice()
        checkTatalPrice()
    }

    @IBAction func stepper1(_ sender: UIStepper) {
        cakeInfo[0].count = Int(sender.value)
        checkCountAndPrice()
    }
    @IBAction func stepper2(_ sender: UIStepper) {
        cakeInfo[1].count = Int(sender.value)
        checkCountAndPrice()
    }
    @IBAction func stepper3(_ sender: UIStepper) {
        cakeInfo[2].count = Int(sender.value)
        checkCountAndPrice()
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        cakeInfo[3].count = Int(sender.value)
        checkCountAndPrice()
   }
    @IBAction func stepper5(_ sender: UIStepper) {
        cakeInfo[4].count = Int(sender.value)
        checkCountAndPrice()
   }
    @IBAction func stepper6(_ sender: UIStepper) {
        cakeInfo[5].count = Int(sender.value)
        checkCountAndPrice()
    }
    @IBAction func stepper7(_ sender: UIStepper) {
        cakeInfo[6].count = Int(sender.value)
        checkCountAndPrice()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initial()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
