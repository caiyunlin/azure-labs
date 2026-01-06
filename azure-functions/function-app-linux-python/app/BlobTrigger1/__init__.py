import logging
import azure.functions as func


def main(myblob: func.InputStream):
    logging.info('Python Blob trigger function processed %s', myblob.name)
    # blob = myblob.read()
    # with open("out.txt", "wb") as outfile:
    #     outfile.write(blob)