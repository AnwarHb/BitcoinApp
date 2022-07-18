# bitcoinApp

The is a a Python Web APP that:
- Presents the Current BitCoin Price
- Stores the price in a Redis Database
- Presents the Average Price for the last 10 minutes

#### URLs used:
To get the current BitCoin price:

[https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT](https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT)

To get the average price over the last 10 minutes:

[https://min-api.cryptocompare.com/data/v2/histominute?fsym=BTC&tsym=USD&limit=10](https://min-api.cryptocompare.com/data/v2/histominute?fsym=BTC&tsym=USD&limit=10)

#### packages needed:
- Flask - a web application framework.
- requests - It is a user-friendly implementation of the HTTP request abstract concept. 
- redis - for using the redis database.
- render_template - is used to generate output from an html template file.

#### Run the code locally:
- install python3.10 if needed.
- clone the repository : 
 `git clone https://github.com/AnwarHb/bitcoinApp.git`
- move to the code repository : `cd bitcoinApp`
- install the requiremnets  `pip install -r requirements.txt`
- run the app `python3 ./bitcoinApp.py` 
  you can access the app with [http://localhost:5000](http://localhost:5000)
  [![](https://github.com/AnwarHb/bitcoinApp/blob/main/app_Running.png?raw=true)](https://github.com/AnwarHb/bitcoinApp/blob/main/app_Running.png?raw=true)

#### Docker and jenkins connection:

To be able to use jenkins to push images to dockerHub you should:
- Install a suitable docker plugin to jenkins
- Add docker credentials to jenkins
- Create Jenkins pipeline with the added credentials
- Use dockerhub login command and docker push command to push the image to dockerHub.

[![](https://github.com/AnwarHb/bitcoinApp/blob/main/docker.png?raw=true)](https://github.com/AnwarHb/bitcoinApp/blob/main/docker.png?raw=true)
