import requests

def joke():
    api = "https://official-joke-api.appspot.com/random_joke"
    response = requests.get(api).json()
    return f"{response["setup"]}\n{response['punchline']}"

print(joke())
