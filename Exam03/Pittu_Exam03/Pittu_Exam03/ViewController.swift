//
//  ViewController.swift
//  Pittu_Exam03
//
//  Created by Pittu,Sobhareddy on 4/27/23.
//

import UIKit
class Singers{
    var singerName = ""
    var image = ""
    var description = ""
    init(singerName:String,image:String,descriptiom:String) {
        self.singerName = singerName
        self.image = image
        self.description = descriptiom
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        singes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        //populate the cell we created
        cell.textLabel?.text = singes[indexPath.row].singerName
    
        //return cell
        return cell
    }
    

    var singes = [Singers]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Singers"
        let s1 = Singers(singerName: "Kim NamJoon", image: "rm",descriptiom: "Kim Nam-joon, known professionally as RM, is a South Korean rapper, singer-songwriter and record producer. He is the leader of South Korean boy band BTS. RM released his first solo mixtape, RM, in 2015")
        singes.append(s1)
        
        let s2 = Singers(singerName: "Kim SeokJin", image: "jin",descriptiom: "Kim Seok-jin, also known professionally as Jin, is a South Korean singer, songwriter, and member of the South Korean boy band BTS. Kim has co-written and released three solo tracks with BTS: Awake in 2016, Epiphany in 2018, and Moon in 2020, all of which have charted on South Korea's Gaon Digital Chart. ")
        singes.append(s2)
        let s3 = Singers(singerName: "Min YoonGi", image: "suga",descriptiom: "Min Yoon-gi, known professionally by his stage names Suga and Agust D, is a South Korean rapper, songwriter and record producer. Under Big Hit Music, he debuted as a member of the South Korean boy band BTS in 2013.")
        singes.append(s3)
        let s4 = Singers(singerName: "Jung HoSeok", image: "jhope",descriptiom: "Jung Ho-seok, better known by his stage name J-Hope, is a South Korean rapper, singer-songwriter, dancer, and record producer. He made his debut as a member of South Korean boy band BTS in 2013, under Big Hit Entertainment. J-Hope released his first solo mixtape, Hope World, in 2018.")
        singes.append(s4)
        let s5 = Singers(singerName: "Park Jimin", image: "jim",descriptiom: "Park Ji-min, known mononymously as Jimin, is a South Korean singer and dancer. In 2013, he made his debut as a member of the South Korean boy band BTS, under the record label Big Hit Entertainment. ")
        singes.append(s5)
        let s6 = Singers(singerName: "Kim TaeHyung", image: "v",descriptiom: "Kim Tae-hyung, also known professionally as V, is a South Korean singer and member of the boy band BTS. Since his debut with the group in 2013, V has released three solo tracks under their name Stigma in 2016, Singularity in 2018, and Inner Child in 2020—all of which charted on South Korea's Gaon Digital Chart. ")
        singes.append(s6)
      
        let s7 = Singers(singerName: "Jeon JungKook", image: "jk",descriptiom: "Jeon Jung-kook, known mononymously as Jungkook, is a South Korean singer. He is a member and vocalist of the South Korean boy band BTS.")
        singes.append(s7)
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
    }


    @IBOutlet weak var tableViewOL: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "SingerSegue"){
            let destination = segue.destination as! PhotosViewController
            destination.destSinger = singes[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
}

