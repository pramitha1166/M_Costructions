from flask import Blueprint, request
from services.delivery_log_service import add_delivery_log_service, get_delivery_log_service
delivery_log_route = Blueprint('delivery_log_route', __name__)


@delivery_log_route.route("/api/v2/deliverylog/add", methods=['POST'])
def add_product():
    data = request.get_json()
    return add_delivery_log_service(data)

@delivery_log_route.route("/api/v2/deliverylog/viewall", methods=['GET'])
def get_products():
    return get_delivery_log_service()
