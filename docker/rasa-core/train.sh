# Train rasa-core online instead of starting the server

docker run -p 5005:5005 --mount source=ocd-rasa-data,target=/app/data -it ocd-rasa-core python3 /app/train_online.py

