fbOAuth(app_id, app_secret, extended_permissions = TRUE)

require("Rfacebook")
#fb_oauth <- fbOAuth(app_id="935912299784361", app_secret="9c9fe4df2d7077ea92bfcc8f270c0fa0")
token <- "d20b93528aaa4ab54ea010383e634335"
fblikes <- getLikes("LaurenLayneAuthor", token)

#now we have our fb_oauth connection
 #we will just save them to be able to use them later
 save(fb_oauth, file="fb_oauth“)
 
 #so if you want to connect to Facebook again you just have to call
 load("fb_oauth")


#the getUsers function return public information about one or more Facebook user
me <- getUsers("me", token=fb_oauth)

getFriends(token, simplify = FALSE)

my_friends <- getFriends(token=fb_oauth, simplify=TRUE)

head(my_friends, n=10)

getUser()

my_friends_info <- getUsers(my_friends$id, token=fb_oauth, private_info=TRUE)
 
 #create a table with the relationship statuses
 
table(my_friends_info$relationship_status)
