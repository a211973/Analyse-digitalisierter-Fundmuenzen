Function for Image Processing and Preprocessing
This function handles the necessary preprocessing steps for an image before it can be used with the MobileNetV2 model. 
It includes converting the image to RGB, resizing it to the required dimensions, 
and applying MobileNetV2's specific preprocessing function, which normalizes the image data.

Function to Train the Model
This function initializes a OneClassSVM classifier, which is particularly suited for anomaly detection. 
It is trained using the features extracted from the images. 
The trained classifier can then be used to detect anomalies in new data.
