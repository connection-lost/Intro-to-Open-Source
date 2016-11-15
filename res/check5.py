from pymongo import MongoClient
from random import randint
import datetime

client = MongoClient()
db = client.csci2963
definitions = db.definitions


def random_word_requester():
    total = definitions.count()
    index = randint(0, total)
    target = definitions.find()[index]
    word = target.get("word")

    if not target.has_key("date"):
        target["date"] = []

    target.get("date").insert(0, str(datetime.datetime.now()))

    definitions.save(target)
    
    return word


if __name__ == '__main__':
    print random_word_requester()
