FROM node:16.10.0
# install angular cli
RUN npx --package @angular/cli ng
# copy source codes
WORKDIR /app
ENV PATH=${PATH}:/app
COPY . .
# build and run
RUN npm install
CMD npm run start
