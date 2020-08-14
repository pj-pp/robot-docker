FROM offkung14/python-chromedriver:3.7.6-alpine3.11

WORKDIR /app/robot

COPY ./testsuites/* ./
COPY ./requirements.txt ./

RUN pip install -r ./requirements.txt
RUN sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox', \ '--disable-gpu', \ '--disable-dev-shm-usage'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py

#หลังจาก install แล้วก็จะทำการ เริ่มโปรแกรม
CMD ["robot","--outputdir","/app/robot/reports","training.robot", "training2.robot"]
# RUN robot /app/robot/testsuites/training.robot