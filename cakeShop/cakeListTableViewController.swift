//
//  cakeListTableViewController.swift
//  cakeShop
//
//  Created by 方芸萱 on 2020/7/29.
//

import UIKit

class cakeListTableViewController: UITableViewController {

    @IBOutlet var label: UITableView!
    @IBOutlet weak var tatalPriceLabel: UILabel!
    
    @IBOutlet weak var count1Label: UILabel!
    @IBOutlet weak var count2Label: UILabel!
    @IBOutlet weak var count3Label: UILabel!
    @IBOutlet weak var count4Label: UILabel!
    @IBOutlet weak var count5Label: UILabel!
    @IBOutlet weak var count6Label: UILabel!
    @IBOutlet weak var count7Label: UILabel!
    var tatalPrice = 0
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0
    var count6 = 0
    var count7 = 0
//    草莓派550
//    草莓輕蛋糕500
//    草莓千層800
//    草莓鮮奶油蛋糕600
//    草莓巧克力蛋糕600
//    布朗尼380
//    檸檬糖霜磅蛋糕400
//    class Cake{
//        var name = "草莓蛋糕"
//        var picture = "straberry1"
//        var price = 480
//        var count = 0
//        let maxmum = 5
//    }
//    var cake1 = Cake()
//    var cake2 = Cake()

    func checkTatalPrice(){

        tatalPrice = count1*550 + count2*500 + count3*800 + count4*600 + count5*600 + count6*380 + count7*400
        tatalPriceLabel.text = "總金額NT$ \(tatalPrice)"
    }

    @IBAction func stepper1(_ sender: UIStepper) {
        count1 = Int(sender.value)
        count1Label.text = String("數量：\(count1)")
        checkTatalPrice()
    }
    @IBAction func stepper2(_ sender: UIStepper) {
        count2 = Int(sender.value)
        count2Label.text = String("數量：\(count2)")
        checkTatalPrice()
    }
    @IBAction func stepper3(_ sender: UIStepper) {
        count3 = Int(sender.value)
        count3Label.text = String("數量：\(count3)")
        checkTatalPrice()
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        count4 = Int(sender.value)
        count4Label.text = String("數量：\(count4)")
        checkTatalPrice()
   }
    @IBAction func stepper5(_ sender: UIStepper) {
        count5 = Int(sender.value)
        count5Label.text = String("數量：\(count5)")
        checkTatalPrice()
   }
    @IBAction func stepper6(_ sender: UIStepper) {
        count6 = Int(sender.value)
        count6Label.text = String("數量：\(count6)")
        checkTatalPrice()
    }
    @IBAction func stepper7(_ sender: UIStepper) {
        count7 = Int(sender.value)
        count7Label.text = String("數量：\(count7)")
        checkTatalPrice()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
