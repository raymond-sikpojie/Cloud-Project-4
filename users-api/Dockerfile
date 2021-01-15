# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Env Varialbes
ENV POSTGRES_USERNAME=udagram_task4 \
 POSTGRES_PASSWORD=omogbare1 \
 POSTGRES_HOST=monolithtomicroservices.cprgvn3wbadu.us-east-1.rds.amazonaws.com \
 POSTGRES_DB=udagram_task4 \
 AWS_BUCKET=monolithtomicroservices \
 AWS_REGION=us-east-1 \
 AWS_PROFILE=default \
 JWT_SECRET=averyprivatekey \
 URL=http://localhost:8100 

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["npm", "run", "prod"]