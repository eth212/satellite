import pandas as pd
import numpy as np
import matplotlib
from matplotlib import pyplot as plt
import os
import cv2
import random
import pickle

global zoom, ommited_data, valid_Postals,raw_data

# gcloud compute instances 
data = pd.read_csv('C:/Users/Ethan/Desktop/sat/IncomeData.csv')
df = pd.DataFrame(data)
data = pd.read_csv('C:/Users/Ethan/Desktop/sat/training1.csv')
zoom = pd.DataFrame(data)
dataDir = 'C:/Users/Ethan/Desktop/sat/images/'
newDir = 'C:/Users/Ethan/Desktop/sat/quality/'


IMG_SZ = 100
white = [255,255,255]

valid_Postals = []
training_data = []



global num_of_ims
test = []
def create_images():
    for i in range(90000,110000):
        value = str(df.iloc[i,0])
        #value = str(df.iloc[3,0])
        path = dataDir + value + '.png'
        if(os.path.exists(path) == True and zoom.iloc[i-2,0] == value):
            try:

                img=cv2.imread(path)
                zoom_val = zoom.iloc[i-2, 9]
                width = 2*zoom.iloc[i-2,11]
                length = 2*zoom.iloc[i-2,10]
                diff = abs(width - length)
                if(width > length):
                    vert_border = int(round(diff)/2)
                    horiz_border = 0
                else:
                    horiz_border = int(round(diff)/2)
                    vert_border = 0

                final = cv2.copyMakeBorder(img, vert_border, vert_border, horiz_border, horiz_border, cv2.BORDER_CONSTANT, value=white)
                img_array = cv2.resize(final, (IMG_SZ, IMG_SZ))
                cv2.imwrite(newDir + value + ".png", img_array)
                #label = df.iloc[i,1]
            except Exception as e:
                pass
    return test

create_images()


path = dataDir + zoom.iloc[1,0] + ".png"

path
img=cv2.imread(path)
img.shape
wid = wid*2
len = len*2
diff = abs(wid - len)
image = cv2.copyMakeBorder(img,0,0,diff, diff, cv2.BORDER_CONSTANT, value=white )
cv2.imwrite(newDir + "test.png", image)
img[0]

resize = cv2.resize(image, (100,100))
cv2.imwrite(newDir + "test2.png", resize)


training_data[0]

        labels = []
        images = []
        zooms = []
        for i in range(len(raw_data)):
            images.append(raw_data[i][0])
            labels.append(raw_data[i][2])
            zooms.append(raw_data[i][1])

        labels = np.array(labels)
        zooms = np.array(zooms)
        images = np.array(images).reshape(-1, IMG_SZ, IMG_SZ, 3)

        pickle_out = open("images" +   str(num_of_ims) + ".pickle" , "wb")
        pickle.dump(images, pickle_out)
        pickle_out.close()

        pickle_out = open("labels" +   str(num_of_ims) + ".pickle" , "wb")
        pickle.dump(labels, pickle_out)
        pickle_out.close()

        pickle_out = open("zooms" +   str(num_of_ims) + ".pickle" , "wb")
        pickle.dump(zooms, pickle_out)
        pickle_out.close()


create_training_data()

# test
pickle_in = open("images879.pickle", "rb")
test_array = []
test_array = pickle.load(pickle_in)
test_array[0]
