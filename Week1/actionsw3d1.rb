    #def <methodname>(<argument(s)>)
        #Do somthing with arguments and return something else

    def humanized_time_ago(minute_num)
        if minute_num >= 60
            "#{minute_num / 60}  hours ago"
        else
            "#{minute_num / 60} minutes ago"
        end
    end
    
   get '/' do 
   @post_shark = { #post is an object called a hash
    #hello: "Hello World!",
    username: "sharky_jjjjjjj",  # these are called keys
    avatar_url: "http://naserca.com/images/sharky_j.jpg",
    photo_url: "http://naserca.com/images/shark.jpg",
    humanized_time_ago: humanized_time_ago(30),
    like_count: 0,
    comment_count: 1,
    comments: [{
        username: "sharky_j",
        text:"sharky_j: Out for the Long weekend"
    }] 
       
   } #we can access the keys in the hash vairable using <variable_pointing to hash<[<key>]
   

   @post_whale = { #post is an object called a hash
    #hello: "Hello World!",
    username: "kirk_whalum",  # these are called keys
    avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
    photo_url: "http://naserca.com/images/whale.jpg",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 0,
    comment_count: 1,
    comments: [{
        username: "kirk_whalum",
        text:"#weekendvibes"
    }] 
       
   }
   
   @post_marlin = { #post is an object called a hash
    #hello: "Hello World!",
    username: "marlin_peppa",  # these are called keys
    avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
    photo_url: "http://naserca.com/images/marlin.jpg",
    humanized_time_ago: humanized_time_ago(190),
    like_count: 0,
    comment_count: 1,
    comments: [{
        username: "marlin_peppa",
        text:"lunchtime ;-)"
    }] 
       
   }
   
   
 
 @posts = [@post_shark, @post_whale, @post_marlin]
 
 erb :index
end
