# Webhawk Web Application

## About
The Webhawk web application is a cyber incident management system that was initially developed to handle the incidents detected by Webhawk. 

## Using the API
How to add a new incident using the API

```shell
curl -X POST http://localhost:3000/api/v1/incidents \
  -H "Content-Type: application/json" \
  -d '{"incident": {"description": "Unauthorized access attempt", "attack_vector": "phishing"}}'
```
## TODO
1. Add JWT token for API authentication 

