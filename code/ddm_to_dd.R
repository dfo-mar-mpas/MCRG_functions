#Convert degress decimal minutes to decimal degress

ddm_to_dd <- function(value, reverse = FALSE) {
  if (!reverse) {
    # Convert from DDM to DD
    parts <- as.numeric(unlist(strsplit(as.character(value), " ")))
    degrees <- parts[1]
    decimal_minutes <- parts[2]
    
    # Convert to decimal degrees
    dd <- degrees + (decimal_minutes / 60)
    return(dd)
  } else {
    # Convert from DD to DDM
    dd <- as.numeric(value)
    degrees <- floor(dd)
    decimal_minutes <- (dd - degrees) * 60
    
    # Return as formatted string
    return(paste(degrees, round(decimal_minutes, 4)))
  }
}