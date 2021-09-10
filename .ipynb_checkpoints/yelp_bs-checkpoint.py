{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "df235b2c",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "<Response [200]>\n"
     ]
    }
   ],
   "source": [
    "# -*- coding: utf-8 -*-\n",
    "from bs4 import BeautifulSoup\n",
    "import requests\n",
    "\n",
    "headers = {'User-Agent':'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/601.3.9 (KHTML, like Gecko) Version/9.0.2 Safari/601.3.9'}\n",
    "url='https://www.yelp.com/search?find_desc=Restaurants&find_loc=Georgia%20Tech%2C%20Atlanta%2C%20GA&ns=1&l=g%3A-84.41276550292969%2C33.76816006007425%2C-84.38718795776367%2C33.78956253387451&start=160'\n",
    "response=requests.get(url,headers=headers)\n",
    "\n",
    "print(response)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "84c5b9e1",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.8"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
