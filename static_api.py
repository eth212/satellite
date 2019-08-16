import requests
import cv2
import shutil
import pandas as pd
import numpy as np
import sys
import time

headers = {'user-agent' : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36'}
proxies = {
"http": "http://ip:port",
"https": "http://ip:port",
}


buffer = pd.read_csv("training1.csv")
data = pd.DataFrame(buffer)
last_index = data[data['PostCode']=='E5H1E7'].index.values.astype(int)[0]
amount = np.linspace(0,77, 7771)
position = data.iloc[0:last_index, 1].nunique()
print(position)

data = data.drop_duplicates(subset=["centroid_lat", "centroid_long", "Zoom", "width", "height"],keep="first")
target = 900000
def runApi(current_position, target):

    for i in range(current_position + 100 ,target):
        PostCode = str(data.iloc[i, 0])
        centroid_lat = str(data.iloc[i, 5])
        centroid_long = str(data.iloc[i, 6])
        zoom = str(data.iloc[i, 9])
        height = str(data.iloc[i, 10])
        width = str(data.iloc[i, 11])
        query = "https://maps.googleapis.com/maps/api/staticmap?center=" + centroid_lat  + ","  + centroid_long + "&zoom=" + zoom + "&size=" + width + "x" + height + "&scale=2&maptype=satellite&key="

        try:
            response = requests.get(query, headers=headers, stream=True)
            with open("images/" + PostCode + ".png", 'wb') as out_file:
                shutil.copyfileobj(response.raw, out_file)
            del response

        except requests.ConnectionError as e:
            print(e)
            sys.exit(0)



runApi(position, target)
