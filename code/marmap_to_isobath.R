marmap_to_isobath <- function(marmap_df,depth= -200,proj=NULL){

  #marmap - this is a call from the getNOAA.bathy in marmap
  #depth - this is a value for the isobath. Default is 200m. 
  #proj - this is the projection you want returned 
    
  require(terra)
  require(sf)

  if(is.null(proj)){message("No projection specified. Default to a NAD83 unprojected coordinate system.")}
  if(is.null(proj)){proj <- "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"}
          
  out <- marmap_df%>%
         marmap::as.raster(.)%>%
         terra::rast(.)%>%
         as.contour(.,levels = depth)%>%
         st_as_sf()%>%
         st_transform(proj)
  
  return(out)
  
  
}