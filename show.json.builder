show.json.builder


json.address @post.tag_list
json.address @post.address 
json.created_at time
json.image_url @post.picture.url(:medium)