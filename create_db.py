import sqlite3

conn = sqlite3.connect("adventureworks.db")

print("Database created successfully")

conn.close()