# Efficient Classification of Fruits and Vegetables in Extensive Agricultural Fields Using Transform Techniques and KNN

## Overview
This repository presents the research implementation of an automated fruit and vegetable
classification system designed for extensive agricultural field scenarios. The proposed
framework combines transform-based feature extraction techniques with the
K-Nearest Neighbour (KNN) classifier to achieve accurate recognition with low
computational complexity.

## Motivation
Reliable identification of fruits and vegetables is an important component of modern
precision agriculture and smart farming systems. While deep learning models offer high
accuracy, they often require large labeled datasets and high computational resources.
This work explores classical transform-based feature extraction techniques paired with
a lightweight machine learning classifier as an efficient alternative.

## Dataset
- Custom-built fruit and vegetable image dataset
- Six classes: Apple, Tomato, Beetroot, Onion, Lady’s Finger, Carrot
- Images captured using a mobile phone camera under controlled conditions
- Manual preprocessing performed using Adobe Photoshop
  (background cleaning, cropping, resizing to 100×100 pixels, illumination normalization)

Due to ongoing publication, the complete dataset is not publicly released. Representative
sample images and dataset details are provided in the `data/` directory.

## Methodology
1. Image acquisition and manual preprocessing
2. Feature extraction using transform techniques:
   - Two-dimensional Discrete Cosine Transform (2D DCT)
   - Two-dimensional Fast Fourier Transform (2D FFT)
3. Feature vector construction from spectral coefficients
4. Classification using K-Nearest Neighbour (KNN) with Euclidean distance
5. Hybrid model evaluation:
   - DCT → FFT
   - FFT → DCT
6. Performance evaluation based on recognition accuracy

## Results
- 2D DCT features achieved recognition accuracy up to **90%**
- 2D FFT features achieved recognition accuracy up to **91.6%**
- Hybrid transform models improved classification accuracy up to **95%**

Key plots and numerical summaries are available in the `results/` directory.

## Paper Status
Published
[Research Paper](https://ieeexplore.ieee.org/document/11256774)
@ Conference: 2025 IEEE Madhya Pradesh Section Conference (MPCON)

## Technologies Used
Matlab, Photoshop

