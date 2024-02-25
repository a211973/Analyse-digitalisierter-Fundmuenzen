# Analyse digitalisierter mittelalterlicher Fundmünzen

Ziel ist es, eine effektive Methode zur Kategorisierung von Fundmünzen basierend auf 
visuellen Merkmalen zu entwickeln. Wir streben an, ein Modell zu erstellen, das in der 
Lage ist, Unterschiede in Farbe, Form, Größe und Textur zu erkennen und diese Merkmale 
zu nutzen, um Münzen in verschiedene Kategorien einzuteilen.

Datensammlung: 
Dieser Ordner enthält die Bilddaten von verschiedenen Pfundmünzen, 
die für die Analyse verwendet werden sollen.

Vorverarbeitung:
Dieser Ordner enthält die Skripte oder Funktionen,
die die Bilder für die Merkmalsextraktion vorbereiten soll.
Es sollen verschiedene Operationen wie Zuschneiden, Skalieren, Konvertieren, 
Filtern, etc. durchgeführt werden.

Merkmalsextraktion:
Dieser Ordner enthält die Skripte oder Funktionen, 
die die von uns ausgewählten Merkmale aus den Bildern extrahieren,

Die Merkmale können die Form, die Farbe, die Textur, die Kanten,... sein.

Klassifizierung: 
In diesem Ordner erstellen wir einen geeigneten Algorithmus,
der die Münzen anhand ihrer Merkmale in verschiedene Kategorien einteilt.

Sortierung: 
In diesem Ordner soll ein System entwerfen werden,
das die klassifizierten Münzen in separate Behälter sortiert.


Image Feature Extraction and Anomaly Detection
This project demonstrates a workflow for extracting features from images using a pre-trained MobileNetV2 model and training an anomaly detection model using OneClassSVM. The workflow includes uploading and extracting images from a ZIP file, initializing the MobileNetV2 model for feature extraction, processing images, extracting features, training the anomaly detection model, and saving the trained model for later use.

Overview
The code is structured into several key functions, each handling a specific part of the process:

Uploading and Extracting Images: Allows users to upload a ZIP file containing images, which are then extracted for processing.
Model Initialization: Initializes the MobileNetV2 model excluding the top layer for feature extraction purposes.
Image Processing and Preprocessing: Processes each image to match the input requirements of MobileNetV2.
Feature Extraction: Uses the initialized MobileNetV2 model to extract features from each processed image.
Model Training: Trains a OneClassSVM model on the extracted features for anomaly detection.
Saving and Downloading the Model: Saves the trained anomaly detection model and enables downloading.
Installation
Before running this project, ensure you have the following dependencies installed:

Python 3.6 or higher
TensorFlow 2.x
NumPy
PIL (Pillow)
scikit-learn
joblib
(Optional) Google Colab for running the notebook in a cloud environment

You can install the required libraries using pip:
pip install tensorflow numpy Pillow scikit-learn joblib
If using Google Colab, most of these dependencies are pre-installed.

Usage
Start the Script: Launch the script or notebook in your preferred environment.
Upload a ZIP File: When prompted, upload a ZIP file containing the images you wish to process.
Model Training: The script will automatically extract images, preprocess them, extract features using MobileNetV2, and train a OneClassSVM model for anomaly detection.
Download the Model: After training, the script will save the model and prompt you to download it for local use.
Additional Notes
Image Formats: The script currently supports JPEG, PNG, and TIFF formats. Ensure your images are in these formats before uploading.
Model Customization: You can adjust the parameters of the MobileNetV2 model and OneClassSVM according to your specific needs.
Data Privacy: Be mindful of data privacy and security when uploading sensitive or personal images.
Contributions
Contributions to this project are welcome. Please ensure to follow best practices for code quality and consistency.

Reference
https://blog.csdn.net/galen_xia/article/details/108633090
https://blog.csdn.net/qq_47281915/article/details/121640725
https://blog.csdn.net/qq_42451251/article/details/108056501
https://blog.csdn.net/cliukai/article/details/102075021
https://zhuanlan.zhihu.com/p/192747600
https://blog.csdn.net/great_yzl/article/details/119807705
https://zhuanlan.zhihu.com/p/38739563
