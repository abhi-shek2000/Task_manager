import requests

BASE = "http://127.0.0.1:5000/"

resp = requests.get(BASE + 'api/user')

print(resp.json())
