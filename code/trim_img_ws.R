trim_img_ws <- function(x){
  
  #quick function to get rid of white space from maps, which can be hard to scale perfectly
  
  require(magick)
  
  #get rid of the white space 
  img <- image_read(x)
  
  # Trim the whitespace
  trimmed_img <- image_trim(img)
  
  # Save the trimmed image
  image_write(trimmed_img, x)
  
}