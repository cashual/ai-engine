docker run -p 5005:5005 --rm --mount type=volume,bind-propagation=shared,source=ocd-rasa-data,target=/app/data ocd-rasa-core

