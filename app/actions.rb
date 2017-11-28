    #def <methodname>(<argument(s)>)
        #Do somthing with arguments and return something else

get '/' do
    
@posts = Post.order(created_at: :desc)    
 erb (:index)
 
end
