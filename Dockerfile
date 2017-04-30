from node:7-alpine
run mkdir -p /src/app
workdir /src/app
copy package.json /src/app/package.json
run npm install
copy . /src/app
expose 3000
cmd ["npm","start"]
