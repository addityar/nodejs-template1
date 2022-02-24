# nodejs-template1

Code ini adalah contoh code nodejs untuk belajar bagaimana cara menjalankan sebuah aplikasi berbasis web.

Berikut adalah 2 cara menjalankan nodejs di laptop kamu:

<b>* Install nodejs di laptopmu : </b>

pertama yang harus kamu lakukan adalah menginstal nodejs. Jika sudah menginstal nodejs di laptopmu, silahkan clone repo ini.

`git clone https://github.com/addityar/nodejs-template.git`

jika sudah diclone silahkan pindah ke directory yang sudah kalian clone 

`$ cd nodejs-template`

lalu lakukan `npm install` dan jalankan aplikasi nodejsnya

```
$ npm install 
$ node app.js
```
lalu buka URL `http://localhost:8000` pada browser.

<b>* menjalankan dengan dokcer : </b>

untuk menjalankan nodejs dengan docker, yang kita butuhkan adalah menginstall docker di laptop kita. Jika sudah menginstall docker, clone repo ini.

`git clone https://github.com/addityar/nodejs-template.git`

lalu, build image dengan file `Dockerfile` yang ada direpo ini

`$ docker build -t nodejs-template . `

jika proses build image selesai kita jalankan image yang sudah dibuat

`$ docker run -p 8000:8000 -d nodejs-template:latest`

lalu buka URL `http://localhost:8000` pada browser.
