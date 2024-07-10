from django.db import models
# from viewflow.fields import CompositeKey
# from cpkmodel import CPkModel
from django.utils.html import mark_safe
# from composite_foreignkey.db.models import CompositeForeignKey

# Create your models here.

       
class Area(models.Model):
    pincode=models.IntegerField(primary_key=True)
    area_name=models.CharField(null=True,max_length=50)
    # city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    def __str__(self):
        return self.area_name
        
class User_type(models.Model):
    user_type_id=models.AutoField(primary_key=True)
    user_type_name=models.CharField(null=True,max_length=20)
    def __str__(self):
        return self.user_type_name
    
class User(models.Model):
    user_id=models.AutoField(primary_key=True)
    first_name=models.CharField(null=True,max_length=30)
    last_name=models.CharField(null=True,max_length=30)
    email=models.CharField(null=True,max_length=28)
    mobile=models.CharField(null=True,max_length=10)
    otp=models.IntegerField(null=True)
    u="C:/Users/Juveriyah/Desktop/CAPSTONE_PROJECT/EAgroTrade/backend/images/user/"
    # set below display_picture datatype to blob field
    display_picture=models.ImageField(upload_to='images/',null=True)
    # display_picture=str(url+str(display_picture))
    def img_preview(self): #new
        return mark_safe('<img src = /"{u}" width = "300"/>'.format( url = self.display_picture.url))
 
    address=models.TextField(null=True)
    shop_no=models.IntegerField(null=True)
    shop_name=models.CharField(null=True,max_length=20)
    street_name=models.CharField(null=True,max_length=30)
    user_type_id=models.ForeignKey(User_type, on_delete=models.CASCADE)
    pincode=models.ForeignKey(Area, on_delete=models.CASCADE)
    # city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    password=models.CharField(null=True,max_length=20)
    security_question=models.TextField(null=True)
    security_answer=models.TextField(null=True)
    language_preference=models.CharField(null=True,max_length=30)
    business_name=models.CharField(null=True,max_length=45)
    establishment_year=models.IntegerField(null=True)
    business_description=models.TextField(null=True)
    gst_no=models.IntegerField(null=True)
    licence_no=models.IntegerField(null=True)
    # here below blob field will come
    licence_image=models.ImageField(upload_to='images/',null=True)
    def img_preview(self): #new
        return mark_safe('<img src = /"{url}" width = "300"/>'.format( url = self.licence_image.url))
    def __str__(self):
        return self.first_name

    # here below options would come
    weekly_off=models.TextField(null=True)
    class Meta:
        db_table = 'User'




class Product_category(models.Model):
    product_category_id=models.AutoField(primary_key=True)
    product_category_name=models.CharField(null=True,max_length=20)
#    here below too blob will come as datatype
    # product_category_image=models.TextField(null=True)
    product_category_image=models.ImageField(upload_to='pc_images/',null=True)
    def __str__(self):
        return self.product_category_name

class Product(models.Model):
    product_id=models.AutoField(primary_key=True)
    product_name=models.CharField(null=True,max_length=30)
    description=models.TextField(null=True)
    unit_of_measurement=models.CharField(null=True,max_length=20)
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    product_category_id=models.ForeignKey(Product_category, on_delete=models.CASCADE,null=True)
    def __str__(self):
        return self.product_name



class EAuction(models.Model):
    e_auction_id=models.AutoField(primary_key=True)
    e_auction_start_date_time=models.DateTimeField(null=True)
    e_auction_end_date_time=models.DateTimeField(null=True)
   
    opening_price=models.FloatField(null=True)
    quantity=models.IntegerField(null=True)
    e_auction_cancel=models.BooleanField(null=True,default=False)
    isCompleted=models.BooleanField(null=True,default=False)
 
    e_auction_description=models.TextField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)
    class Meta:
        db_table = 'EAuction'
    def __str__(self):
        return str(self.e_auction_id)   

class EAuctionUserDetail(models.Model):
    e_auction_user_detail_id=models.AutoField(primary_key=True)
    cpk_user_id=models.ForeignKey(User, on_delete=models.CASCADE,null=True,blank=True)
    cpk_e_auction_id=models.ForeignKey(EAuction,on_delete=models.CASCADE,null=True,blank=True)
    bidPrice=models.FloatField(null=True,blank=True)
   
    bidDateTime=models.DateTimeField(null=True,blank=True)
    isCancel=models.BooleanField(null=True,default=False,blank=True)
    class Meta:
        # managed =   # for CompositePK *1
        db_table = 'EAuctionUserDetail'
        # constraints = [models.UniqueConstraint(fields=['cpk_user_id', 'cpk_e_auction_id'], name='composite_pk_a') ]
        unique_together = (('cpk_user_id', 'cpk_e_auction_id'),)  # for CompositePK



class Product_photos(models.Model):
    product_photos_id=models.AutoField(primary_key=True)
    product_photo=models.ImageField(upload_to='pc_images/',null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

# below is merge table

# class Product_product_photosMerge(models.Model):
#     class Meta:
#         proxy = True
#     # fields from product
#     product_id=models.AutoField(primary_key=True)
#     product_name=models.CharField(null=True,max_length=30)
#     description=models.TextField(null=True)
#     unit_of_measurement=models.CharField(null=True,max_length=20)
#     user_id=models.ForeignKey(User, on_delete=models.CASCADE)
#     product_category_id=models.ForeignKey(Product_category, on_delete=models.CASCADE,null=True)
     
#     # field from product photos
#     product_photos_id=models.AutoField(primary_key=True)
#     product_photo=models.TextField(null=True)
#     product_id=models.ForeignKey(Product, on_delete=models.CASCADE)


class Payment(models.Model):
    payment_id=models.AutoField(primary_key=True)
    payment_method=models.CharField(null=True,max_length=45)
    amount=models.FloatField(null=True)
    payment_date_time=models.DateTimeField(null=True)
    transaction_id=models.IntegerField(null=True)
    e_auction_id=models.ForeignKey(EAuction, on_delete=models.CASCADE,null=True)
   
class Delivery(models.Model):
    delivery_id=models.AutoField(primary_key=True)
    is_delivery_charges_paid=models.BooleanField(null=True,default=False)
    address=models.TextField(null=True)
    shop_no=models.IntegerField(null=True)
    shop_name=models.CharField(null=True,max_length=20)
    street_name=models.CharField(null=True,max_length=30)
    pincode=models.ForeignKey(Area, on_delete=models.CASCADE)
    #  here below put options
    delivery_status=models.CharField(null=True,max_length=45)
    status_date_time=models.DateTimeField(null=True)
    estimated_delivery_date_time=models.DateTimeField(null=True)
    delivery_charges=models.FloatField(null=True)
    isDelivered=models.BooleanField(null=True,default=False)
    eAuction_id=models.ForeignKey(EAuction, on_delete=models.CASCADE)
    def __str__(self):
        return str(self.delivery_id)



