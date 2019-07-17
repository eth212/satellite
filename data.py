import pandas as pd
import matplotlib
from matplotlib import pyplot as plt
import numpy as np


data = pd.read_csv('supp1.csv')

data.head(200)
postalDF = pd.DataFrame(data)
search = postalDF["PostCode"].where( postalDF["lat"] <50)
search.head(20)

lngmin = postalDF["lng"].min()
lngmax = postalDF["lng"].max()
latmin = postalDF["lat"].min()
latmax = postalDF["lat"].max()
print(lngmin, lngmax, latmin, latmax)

latvals = np.linspace(latmin, latmax, 793815)
lngvals = np.linspace(lngmin, lngmax, 793815)



plt.scatter(postalDF["lng"], postalDF["lat"], c="r")
