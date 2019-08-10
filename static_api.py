import requests
import cv2
import shutil
import pandas as pd

data = pd.read_csv("")


response = requests.get("https://maps.googleapis.com/maps/api/staticmap?center=47.5704045,-53.274431&zoom=13&size=267x341&scale=2&maptype=satellite&key=AIzaSyDYWsrS6XuUJ-58ewStqDiBsqDQHHRTnbM", stream=True)

with open('images/img.png', 'wb') as out_file:
    shutil.copyfileobj(response.raw, out_file)
del response
