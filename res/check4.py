from pymongo import MongoClient
client = MongoClient()
db = client.csci2963
definitions = db.definitions


#a = raw_input("Fetch all records")
#for definition in definitions.find():
#    print definition

a = raw_input("Fetch one record")
print definitions.find_one()

a = raw_input("Fetch this word:")
for definition in definitions.find({"word": a}):
    print definition

a = raw_input("Fetch this id:")
for definition in definitions.find({"_id": a}):
    print definition

a = raw_input("Insert record word:")
b = raw_input("Insert record definition:")
definitions.insert_one({"word": a, "definition": b})
