FROM node:lts-buster
RUN git clone https://github.com/Emperordagoat/Venom-emp /root/Venom-emp
RUN npm cache clean --force
RUN rm -rf /root/Venom-emp/node_modules
WORKDIR /root/Venom-emp
RUN apt install tar -y
RUN tar -xf node_modules
EXPOSE 8000
CMD ["node","index.js" ] 
