//
//  ViewController.swift
//  bubbleSort
//
//  Created by Kim Janghyun on 2023/04/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    @IBOutlet weak var num5: UILabel!
    @IBOutlet weak var num6: UILabel!
    @IBOutlet weak var num7: UILabel!
    @IBOutlet weak var num8: UILabel!
    @IBOutlet weak var num9: UILabel!
    @IBOutlet weak var num10: UILabel!
    @IBOutlet weak var num11: UILabel!
    @IBOutlet weak var num12: UILabel!
    
    let arrayList = [5,7,8,2,4,56,45,29,77,23,7,39]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        changeNumbers(list1:arrayList)
        
        //abc
        
//        bubblesortFunc()
    }
    
    
//    func bubblesortFunc(arr:[Int])->Array<Int>{
//        print(arr)
//        var resultArr = [1,1,1,1,1,1,1,1]
//        print(resultArr)
//        return resultArr
//    }

    // Bubble Sort Function
    func bubblesortFunc(){
        var list1 = arrayList
//        var list2 = arrayList
        var temp = 0
        
        print(list1)
        changeNumbers(list1:list1)
        
        for i in arrayList.startIndex..<arrayList.endIndex{
            for j in arrayList.startIndex..<arrayList.endIndex-1{
                if(list1[j] > list1[j+1]){
                    temp = list1[j+1]
                    list1[j+1] = list1[j]
                    list1[j] = temp
                }
                print(list1)
            }
        }
        changeNumbers(list1:list1)

    }
    
    func changeNumbers(list1:[Int]){
        let assetList = [num1,num2,num3,num4,num5,num6,
                         num7,num8,num9,num10,num11,num12]
        
        for i in assetList.startIndex..<assetList.endIndex{
            assetList[i]?.text = String(list1[i])
        }
    }
    
    @IBAction func buubleSortExecute(_ sender: UIButton) {
        bubblesortFunc()
    }
    
}

