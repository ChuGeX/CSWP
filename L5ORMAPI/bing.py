import requests

def main():
    res = requests.get("https://www.bing.com/")
    print(res.text)

if __name__ == "__main__":
    main()