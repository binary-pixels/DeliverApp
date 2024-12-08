import os 
import cv2
import re

import os
import re


for dirpath, dirnames, filenames in os.walk("images/burgers"):
    for filename in filenames:
        old_file_path = os.path.join(dirpath, filename)
        img = cv2.imread(old_file_path, 1)
        img = cv2.resize(img, (1000,1000))
        cv2.imwrite(old_file_path,img)
        print(img.shape)
        print(old_file_path)