from api.product import product_route
from unittest import TestCase

class TestIntegrations(TestCase):
    def setUp(self):
        self.app = product_route.test_client()

    def test_product_length(self):
        response = self.app.get('/api/v2/product/viewall')
        assert response is not None

    def test_deliver_logs_length(self):
        response = self.app.get('/api/v2/deliverlogs/all')
        assert response is not None