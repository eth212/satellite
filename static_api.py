import requests
import cv2
import shutil
import pandas as pd

buffer = pd.read_csv("training1.csv")
data = pd.DataFrame(buffer)
data = data.drop_duplicates(subset=["centroid_lat", "centroid_long", "Zoom", "width", "height"],keep="first")
print(data)
for i in range(0,100000):
    PostCode = str(data.iloc[i, 0])
    centroid_lat = str(data.iloc[i, 5])
    centroid_long = str(data.iloc[i, 6])
    zoom = str(data.iloc[i, 9])
    height = str(data.iloc[i, 10])
    width = str(data.iloc[i, 11])
    query = "https://maps.googleapis.com/maps/api/staticmap?center=" + centroid_lat  + ","  + centroid_long + "&zoom=" + zoom + "&size=" + width + "x" + height + "&scale=2&maptype=satellite&key=AIzaSyDYWsrS6XuUJ-58ewStqDiBsqDQHHRTnbM"
    response = requests.get(query, stream=True)
    with open("images/" + PostCode + ".png", 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
    del response
