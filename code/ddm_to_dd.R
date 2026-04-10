#Convert degress decimal minutes to decimal degress

ddm_to_dd <- function(ddm_string) {
  # Split into degrees and decimal minutes
  parts <- as.numeric(unlist(strsplit(as.character(ddm_string), " ")))
  degrees <- parts[1]
  decimal_minutes <- parts[2]
  
  # Convert to decimal degrees
  dd <- degrees + (decimal_minutes / 60)
  return(dd)
}