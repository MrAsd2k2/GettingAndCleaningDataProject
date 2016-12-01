# Getting and cleaning data - Course Project

## Human Activity Recognition Using Smartphones Dataset

### Introduction

This repository contains the files needed to assemble, elaborate and produce a proper "tidy set" of data extracted from the Human Activity Recognition database which contains the 
recording of 30 test subjects who have performed daily activities wearing a device (a retail smartphone) with embedded inertial sensors.
The objective of the experiment was to train a predicting model of the nature of the activities performed (from a set of six) based on the data collected by the embedded gyroscope and accelerometer of the wearable device.

### Prerequisites

The script require a working R environment with the "base" library installed and loaded and it has been tested with CRAN R interpreter version 3.3.2.
Moreover the data from the original archive (available at the following address: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
) should be properly unzipped in the working directory *preserving the original directory names and files paths*. 
In case of doubts, please consult the documentation provided with the decompression software in use.

###License

The R script is released under a public domain license.

The original dataset and the data merged and summarized by the present script must be aknowledged referencing the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
