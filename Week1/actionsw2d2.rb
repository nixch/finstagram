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
   post_shark = { #post is an object called a hash
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
   

   post_whale = { #post is an object called a hash
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
   
   post_marlin = { #post is an object called a hash
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
   
   #end 
    #humanized_time_ago(time_ago_in_minutes)
   
   
  #  get '/' do 
   #   hello = "Hello World!"
    #username = "sharky_j"
#    avatar_url = "http://naserca.com/images/sharky_j.jpg"
 #   photo_url = "http://naserca.com/images/shark.jpg"
  #  time_ago_in_minutes = 15
   # like_count = 0
#    comment_count =1
 #   comments = [
  #      "sharky_j: Out for the Long weekend"
   # ] 
       
   
   
    # if the time_ago_minutes is more than 60
    #if time_ago_in_minutes >= 60
     #   "#{time_ago_in_minutes /60} hours ago"
        # more than an hour"
   # elsif time_ago_in_minutes ==60
    #    "1hr"
    #elsif time_ago_in_minutes <= 1
     #   "Just a moment ago"
    #{time_ago_in_minutes /60"} hours ago
   # else    
    #   "#{time_ago_in_minutes} minutes ago"
  #  end
  
  #post_marlin[:username].to_s  
  
 #[post_shark, post_whale, post_marlin].to_s   
 
 erb  :index
end
