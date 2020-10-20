//
//  paperDollViewController.swift
//  changepaperdoll
//
//  Created by joseph on 2020/10/18.
//

import UIKit
// 音樂效果套件
import AVFoundation
class paperDollViewController: UIViewController {
    @IBOutlet weak var hairImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var clothImageView: UIImageView!
    @IBOutlet var changeSegments:[UISegmentedControl]!
    
    //AVPlayerLooper 重複播放
            var looper:AVPlayerLooper?

    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
        // AVPlayerLooper 重複播放
                if let url = Bundle.main.url(forResource: "赤心無疆", withExtension: "mp3")
                {
        // 生成 AVQueuePlayer 物件
                    let player = AVQueuePlayer()
        // 利用 AVPlayerItem 生成要播放的音樂
                    let playerItem = AVPlayerItem(url: url)
        // 生成 AVPlayerLooper，傳入剛剛生成的 player & item。到時候 AVPlayerLooper 將讓 item 重覆播放。
                    looper = AVPlayerLooper(player: player, templateItem: playerItem)
        // 開始播放音樂(停止播放為 player.pause())
                    player.play()
                }
    }
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        let choiceNum = sender.selectedSegmentIndex
                var imageName: String!
                switch sender {
                case changeSegments[0]:
                    switch choiceNum {
                    case 0:
                        imageName = "hair1"
                    case 1:
                        imageName = "hair2"
                    case 2:
                        imageName = "hair3"
                    case 3:
                        imageName = "hair4"
                    case 4:
                        imageName = "hair5"
                    case 5:
                        imageName = "hair6"
                    default: break
                    }
                    hairImageView.image = UIImage(named: imageName)
                case changeSegments[1]:
                    switch choiceNum {
                    case 0:
                        imageName = "face1"
                    case 1:
                        imageName = "face2"
                    case 2:
                        imageName = "face3"
                    case 3:
                        imageName = "face4"
                    case 4:
                        imageName = "face5"
                    case 5:
                        imageName = "face6"
                    default: break
                    }
                    faceImageView.image = UIImage(named: imageName)
                case changeSegments[2]:
                    switch choiceNum {
                    case 0:
                        imageName = "cloth1"
                    case 1:
                        imageName = "cloth2"
                    case 2:
                        imageName = "cloth3"
                    case 3:
                        imageName = "cloth4"
                    case 4:
                        imageName = "cloth5"
                    case 5:
                        imageName = "cloth6"
                    default: break
                    }
                    clothImageView.image = UIImage(named: imageName)
                
                default:
                    break
                }
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
