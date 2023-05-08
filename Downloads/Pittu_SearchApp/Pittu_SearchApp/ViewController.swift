//
//  ViewController.swift
//  Pittu_SearchApp
//
//  Created by Pittu,Sobhareddy on 3/20/23.
//

import UIKit


class ViewController: UIViewController {
    
    let arr = [["Pucca" ,"Oswals" , "Tom&Jerry", "Shinchan","MickeyMouse"],
               ["Java", "Swift ","python","JavaScript","C++"] ,
               ["BTS","ColdPlay","1Direction","txt","BackstreetBoys"]]
    
    let cartoon_keywords = ["cartoons","kid shows","comics","animations","cartoon"]
    let coding_keyword = ["Programming Language","Codding","Programming","Computer Languages","Software"]
    let music_keywords = ["BoyBands","k-pop","Pop band","Pop music","pop groups"]
    
    let topics_array = [["The daughter of a noodle shop owner has a crush on traveling ninja fighter Garu. Every time she steals a kiss she increases her amazing Pucca powers. Garu, meanwhile, spends his time trying to avoid Pucca and her kisses, to concentrate on developing his mastery of kung fu and fighting his nemesis, Tobe.",
        "Oswald is a safety-conscious but fun-loving octopus who lives in an apartment complex in Big City with his dog, Weenie. His neighborhood is peopled with colorful characters like his pal, Henry the Penguin, Madame Butterfly, who runs the Big Diner, and her daughter, Catrina Caterpillar. Oswald likes to play the piano and sing, and he always does whatever he can to help his friends and neighbors.",
        "Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera. Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the rivalry between the titular characters of a cat named Tom and a mouse named Jerry.",
       "Crayon Shin-chan, is a Japanese manga series written and illustrated by Yoshito Usui. Crayon Shin-chan made its first appearance in 1990 in a Japanese weekly magazine called Weekly Manga Action, which was published by Futabasha.",
     "Mickey Mouse is an animated cartoon character co-created in 1928 by Walt Disney and Ub Iwerks. The longtime mascot of The Walt Disney Company, Mickey is an anthropomorphic mouse who typically wears red shorts, large yellow shoes, and white gloves."   ],
        ["Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.",
        "Swift is a high-level general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community." ,
        "Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming." ,
        "JavaScript, often abbreviated as JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. As of 2022, 98% of websites use JavaScript on the client side for webpage behavior, often incorporating third-party libraries." ,
        "C++ is a high-level, general-purpose programming language created by Danish computer scientist Bjarne Stroustrup."],
        ["BTS, also known as the Bangtan Boys, is a South Korean boy band formed in 2010. The band consists of Jin, Suga, J-Hope, RM, Jimin, V, and Jungkook, who co-write and co-produce the majority of their material.",
        "Coldplay are a British rock band formed in London in 1997. They consist of vocalist and pianist Chris Martin, guitarist Jonny Buckland, bassist Guy Berryman, drummer Will Champion and creative director Phil Harvey." ,
        "One Direction, often shortened to 1D, are an English-Irish pop boy band formed in London in 2010. The group is composed of Niall Horan, Liam Payne, Harry Styles, Louis Tomlinson, and previously Zayn Malik until his departure from the group in March 2015." ,
        "Tomorrow X Together, commonly known as TXT, is a South Korean boy band formed by Big Hit Entertainment, now known as Big Hit Music. The group consists of five members: Yeonjun, Soobin, Beomgyu, Taehyun, and HueningKai. They debuted on March 4, 2019, with the extended play The Dream Chapter: Star." ,
        "Backstreet Boys are an American vocal group consisting of Nick Carter, Howie Dorough, AJ McLean, and cousins Brian Littrell and Kevin Richardson. They were formed in 1993 in Orlando, Florida. The group rose to fame with their international debut album, Backstreet Boys."]]
    
    
    var topic = -1
    var topicInside = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //disable search button
        resultImage.image  = UIImage(named: "welcome")
        searchButton.isEnabled = false
        resetBTN.isHidden = true
        showNextImages.isHidden = true
        showPrevImages.isHidden = true
        
        
    }
    
    @IBOutlet weak var resetBTN: UIButton!
    
    @IBAction func searchTextField(_ sender: Any) {
        
        if((searchTextField.text!).isEmpty){
            searchButton.isEnabled = false
            resetBTN.isHidden = true
            showNextImages.isHidden = true
            showPrevImages.isHidden = true
        }
        else{
            searchButton.isEnabled = true
        }
    }
    
    @IBOutlet weak var searchTextField: UITextField!
   
    
    @IBOutlet weak var searchButton: UIButton!
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        
        let txt = searchTextField.text!
        topicInside = 0
        
        if(cartoon_keywords.contains(txt)){
            resetBTN.isHidden = false
            showNextImages.isHidden = false
            showPrevImages.isHidden = false
            topic = 0
       
            UpdateImage(topic,topicInside)
        }
         if (coding_keyword.contains(txt)){
             resetBTN.isHidden = false
             showNextImages.isHidden = false
             showPrevImages.isHidden = false
            topic =  1
             
             UpdateImage(topic,topicInside)
        }
        if(music_keywords.contains(txt)){
            resetBTN.isHidden = false
            showNextImages.isHidden = false
            showPrevImages.isHidden = false
            topic = 2
       
           UpdateImage(topic,topicInside)
        }
        if(!cartoon_keywords.contains(txt) && !coding_keyword.contains(txt) && !music_keywords.contains(txt)){
            topic = -1
            resultImage.image = UIImage(named: "nope")
            topicInfoText.text = ""
        }
        searchTextField.text = ""
        
    }
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var showPrevImages: UIButton!
    
    @IBOutlet weak var showNextImages: UIButton!
    
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        topicInside -= 1
        
        UpdateImage(topic,topicInside)
        
  
    }
    
    
    @IBAction func ShowNextImagesBtn(_ sender: Any) {
        
        topicInside += 1
        
        UpdateImage(topic,topicInside)
     
        
    }
    @IBAction func ResetBtn(_ sender: UIButton) {
        
        searchTextField.text = ""
        searchButton.isEnabled = false
        resetBTN.isHidden = true
        showNextImages.isHidden = true
        showPrevImages.isHidden = true
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = ""
    }
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    func UpdateImage(_ topicId:Int,_ imageId:Int){
        resultImage.image = UIImage(named: arr[topic][topicInside])
         topicInfoText.text = topics_array[topic][topicInside]
        if (topicInside==0){
            showPrevImages.isEnabled = false
        }
        else{
            showPrevImages.isEnabled = true
        }
        if (topicInside==arr[topic].count-1){
            showNextImages.isEnabled = false
        }
        else{
            showNextImages.isEnabled = true
        }

        
    }
    
}

