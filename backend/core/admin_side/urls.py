from django.contrib import admin
from django.urls import path,include
from .views import *
from rest_framework import routers


# from rest_framework.routers import DefaultRouter
# from admin_side import views
# question ---------- to show only users that are wholesaler in dropdown of product add ?? do we need to give it in this api or in flutter ?
routers=routers.DefaultRouter()
routers.register(r'area',AreaViewSet)
routers.register(r'user_type',User_typeViewSet)
routers.register(r'product_category',Product_categoryViewSet)
routers.register(r'user',UserViewSet)
routers.register(r'product',ProductViewSet)
routers.register(r'eauction',EAuctionViewSet)
routers.register(r'eauctionuserdetail',EAuctionUserDetailViewSet)
routers.register(r'productphotos',Product_photosViewSet)
routers.register(r'payment',PaymentViewSet)
routers.register(r'delivery',DeliveryViewSet)

urlpatterns = [
    path('',include(routers.urls)),
   #  otp
   path('send-otp/', send_otp, name='send_otp'),
   path('verify-otp/', verify_otp, name='verify_otp'),

   # path('',include(router.urls)),
#    the below get_area is a function name in views.py of admin_side
   # area
   # path('get_area/',get_area),  
   # path('post_area/',post_area),
   # path('put_area/<pincode>/',put_area),
   # path('delete_area/<pincode>/',delete_area),
   # user type
   # path('get_user_type/',get_user_type),  
   # path('post_user_type/',post_user_type),
   # path('put_user_type/<user_type_id>/',put_user_type),
   # path('delete_user_type/<user_type_id>/',delete_user_type),
   # product category
   # path('get_product_category/',get_product_category),  
   # path('post_product_category/',post_product_category),
   # path('put_product_category/<product_category_id>/',put_product_category),
   # path('delete_product_category/<product_category_id>/',delete_product_category),
   # # user
   # path('get_user/',get_user),
   # path('post_user/',post_user),
   # path('put_user/<user_id>/',put_user),
   # path('delete_user/<user_id>/',delete_user),

   # product
   # path('get_product/',get_product),
   # path('post_product/',post_product),
]