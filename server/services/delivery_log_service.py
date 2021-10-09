from model.product import Product
from flask import make_response
from utils.DecimalEncoder import Encoder
import json
from utils.JwtToken import validate_token


def add_delivery_log_service(delivery_log_data):
    try:
        title = delivery_log_data['title']
        quantity = delivery_log_data['quantity']

        delivery_log = Product(title=title, quantity=quantity)
        delivery_log.save()
        return make_response({'message' : 'succesfully inserted'}, 201)   
    except Exception as e:
        return make_response({'message' : str(e)}, 404)  

def get_delivery_log_service():
    deliver_logs = []
    try:
        for deliver in Product.objects:
            deliver_data = {}
            deliver_data['_id'] = str(deliver.id)
            deliver_data['title'] = deliver.title
            deliver_data['quantity'] = deliver.quantity
            deliver_logs.append(deliver_data)

        return {"deliver_logs": deliver_logs}
    except Exception as e:
        return make_response({'message' : str(e)}, 404)  

