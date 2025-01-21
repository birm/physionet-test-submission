FROM python:3.10.1-buster

## DO NOT EDIT these 3 lines.
RUN mkdir /challenge
COPY ./ /challenge
WORKDIR /challenge

## Install your dependencies here using apt install, etc.

## Include the following line if you have a requirements.txt file.
RUN pip3 install -r requirements.txt

run mkdir outputs/model
run mkdir test_data
run mkdir outputs/test_outputs
run mkdir training_data

copy ./data.csv training_data
run cp training_data/data.csv test_data

cmd python3 train_model.py training_data/data.csv outputs/model && python3 run_model.py outputs/model test_data/data.csv outputs/test_outputs
