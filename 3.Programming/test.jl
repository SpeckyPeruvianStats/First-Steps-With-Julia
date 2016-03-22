
 for (index, idImage) in enumerate(labelsInfo[:ID]) 
  #Read image file 
  nameFile = "$(path)/$(typeData)Resized/$(idImage).Bmp"
  img = imread(nameFile)

  #Convert img to float values 
  temp = float32sc(img) # deprecated
  temp = float32(img) # deprecated

  #Convert color images to gray images
  #by taking the average of the color scales. 
  if ndims(temp) == 3
   temp = mean(temp.data, 1)
  end
    
  #Transform image matrix to a vector and store 
  #it in data matrix 
  x[index, :] = reshape(temp, 1, imageSize)
