    #def <methodname>(<argument(s)>)
        #Do somthing with arguments and return something else

helpers do
    def current_user
        User.find_by(id: session[:user_id])
    end
end



post '/likes' do
    post_id = params[:post_id]
    like = Like.new ({  post_id: post_id , user_id: current_user.id})
    like.save
    redirect (back)

end


delete '/likes/:id' do
    like = Like.find(params[:id])
    like.destroy
    redirect (back)
end

get '/' do
@posts = Post.order(created_at: :desc)  
#@current_user = User.find_by(id: session[:user_id])
 erb (:index)
 end

get '/login' do #if a user navigates to the path /login
    erb(:login) 
end



post '/login' do 
  #  params.to_s
    #when we submit a login
  username = params[:username]
    password = params[:password]
    #find user by username
    user = User.find_by(username: username)
    #if user
    if user && user.password == password
      session[:user_id] = user.id
      redirect to('/')
      #  "success user with id #{session[:user_id]} is logged in!"
                     #if the passworsd match
     #if user.password == password
    #"succes"
     else
       @error_message = "Login Failed"
       erb(:login)
    #"Liogin fail"
    end
end
    
get '/logout'do
    session.clear #OR session[:user_id] = nil
    redirect  to ('/')# "logout succes"
end
   # else
    #"no user"

    #params.to_s  #display parameters for now to check it works

get '/posts/:id' do   #GET HTTP method for displaying the form
    @post = Post.find(params[:id])
    # escape_html @post.inspect  #displays entry
     erb(:"posts/show") #renders app version of teh post
end

get '/posts/new' do   #GET HTTP method for displaying the form
   @post = Post.new
    erb(:"posts/new")
end

post '/posts' do
    photo_url = params[:photo_url]

    @post = Post.new({ photo_url: photo_url, user_id: current_user.id })

    if @post.save
        redirect(to('/'))
    else
        erb(:"posts/new") 
    
    end
end

get '/signup' do #if a user navigates to the path /signup
    @user = User.new #setup empty @user object
    erb(:signup)  #render "app/views/signup.erb"
end

post '/comments' do
    text =params[:text]
    post_id =params[:post_id]
    comment = Comment.new({ text: text, user_id: current_user.id, post_id: post_id })
    comment.save
   redirect (back)

end

post '/signup' do
    #"Form Submitted!"
    #params.to_s #shows you all the parameter avavailable and the entered information 
#grab user input values from params
email       = params[:email]
avatar_url  = params[:avatar_url]
username    = params[:username]
password    = params[:password]
#if email.present? && avatar_url.present? && username.present? && password.present?
    
#instantiate and save a User
         @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password})
        if @user.save
            redirect to('/login')
        else
     
 # "User #{username} saved!"
  
#return readable represnetation of User object
#escape_html user.inspect


#  "validation FAILED"  
#escape_html user.errors.full_messages
        erb(:signup)
        end


  end  