from mongoengine import Document, StringField, DecimalField, IntField

class DeliveryLog(Document):
    title = StringField(required=True, max_length=256)
    quantity = IntField(required=True, min_value=1)