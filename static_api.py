import requests
import cv2
import shutil
import pandas as pd
import numpy as np

headers = {'user-agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'}

buffer = pd.read_csv("training1.csv")
data = pd.DataFrame(buffer)
data = data.drop_duplicates(subset=["centroid_lat", "centroid_long", "Zoom", "width", "height"],keep="first")
print(data[data['PostCode']=='B1E1H4'])
amount = np.linspace(0,7771, 7771)
data.iloc[0:12446, 1].nunique()

for i in range(10305,100000):
    PostCode = str(data.iloc[i, 0])
    centroid_lat = str(data.iloc[i, 5])
    centroid_long = str(data.iloc[i, 6])
    zoom = str(data.iloc[i, 9])
    height = str(data.iloc[i, 10])
    width = str(data.iloc[i, 11])
    query = "https://maps.googleapis.com/maps/api/staticmap?center=" + centroid_lat  + ","  + centroid_long + "&zoom=" + zoom + "&size=" + width + "x" + height + "&scale=2&maptype=satellite&key=AIzaSyDYWsrS6XuUJ-58ewStqDiBsqDQHHRTnbM"
    response = requests.get(query, headers=headers, stream=True, timeout=5)
    with open("images/" + PostCode + ".png", 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
    del response
