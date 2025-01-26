#Base Image
FROM python:3.9-slim

#Set working dir
WORKDIR .

#Copy in the requirements file
COPY requirements.txt .

#install requirements
RUN pip install -r requirements.txt

#Sources files
COPY . .

#Expose port
EXPOSE 5000

#Start server
CMD ["python3", "server.py"]

