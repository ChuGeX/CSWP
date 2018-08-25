import os
import csv

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine(os.getenv("postgresql://HG@localhost/l4sql"))
db = scoped_session(sessionmaker(bind=engine))

def main():
    