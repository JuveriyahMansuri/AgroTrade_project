from django.contrib import admin
from admin_side.models import *
from django.utils.html import format_html

# below is for img
from django.utils.html import format_html
# Register your models here.

class UserTypeAdmin(admin.ModelAdmin):
    
    list_display=('user_type_id','user_type_name',)
    list_editable=('user_type_name',)
    list_per_page = 5
    search_fields = ('user_type_id','user_type_name',)
    list_filter = ('user_type_id','user_type_name',)
class AreaAdmin(admin.ModelAdmin):
    
    list_display=('pincode','area_name',)
    list_editable=('area_name',)
    # list_display_links =('pincode',)
    list_per_page = 5
    search_fields = ('pincode','area_name',)
    list_filter = ('pincode','area_name',)
class UserAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.display_picture))
    # def licence_image(self, obj):
    #     return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.licence_image))
    # def display_picture(self, obj):
    #     return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.display_picture))
  
    # readonly_fields = ['img_preview']
    
    list_display=('user_id','first_name','last_name','email','mobile','image_tag','address','shop_no','shop_name','street_name','user_type_id','pincode','password','security_question','security_answer','language_preference','business_name','establishment_year','business_description','gst_no','licence_no','licence_image','weekly_off',)
    list_editable=('first_name','last_name','email','mobile','address','shop_no','shop_name','street_name','user_type_id','pincode','password','security_question','security_answer','language_preference','business_name','establishment_year','business_description','gst_no','licence_no','licence_image','weekly_off',)
    list_per_page = 5
    search_fields = ('user_id','first_name','last_name')
    list_filter = ('user_id','first_name','last_name','user_type_id')
    

    
    



class PaymentAdmin(admin.ModelAdmin):
    list_display=('payment_id','payment_method','amount','payment_date_time','transaction_id','e_auction_id')
    list_editable=('payment_method','amount')
    list_per_page = 5
    search_fields = ('payment_id','payment_method','amount','payment_date_time','transaction_id','e_auction_id')
    list_filter = ('payment_id',)
    

    
    
# @admin.register(Product_product_photosMerge)
# class MergedModelAdmin(admin.ModelAdmin):
#     list_display = ('product_id', 'product_name', 'description', 'unit_of_measurement','user_id','product_category_id','product_photo')

class ProductCategoryAdmin(admin.ModelAdmin):
    # def img_preview(self, obj): #new
    #     return format_html('<img src = /"{url}" width = "300"/>'.format( url = self.product_category_image.url))
 
    def image_tag(self, obj):
        return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.product_category_image))
    # def update_image(self,obj):
    #     return product_category_image=models.ImageField(upload_to='pc_images/',null=True)

    # readonly_fields = ['img_preview']
    list_display=('product_category_id','product_category_name','image_tag')
    list_editable=('product_category_name',)
    list_per_page = 5
    search_fields =('product_category_id','product_category_name','product_category_image')
    list_filter = ('product_category_id','product_category_name')
    


class ProductAdmin(admin.ModelAdmin):
    list_display=('product_id','product_name','description','unit_of_measurement','user_id','product_category_id')
    list_editable=('product_name','description')
    list_per_page = 5
    search_fields =('product_id','product_name','description','unit_of_measurement','user_id','product_category_id')
    list_filter = ('product_id','user_id','product_category_id')



class ProductPhotosAdmin(admin.ModelAdmin):
    def product_photo(self, obj):
        return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.product_photo))

    list_display=('product_photos_id','product_photo','product_id')
    list_editable=('product_photo',)
    list_per_page = 5
    search_fields =('product_photos_id','product_photo','product_id')
    list_filter = ('product_photos_id','product_id',)
    
class EAuctionAdmin(admin.ModelAdmin):
    list_display=('e_auction_id','e_auction_start_date_time','e_auction_end_date_time','opening_price','quantity','e_auction_cancel','isCompleted','e_auction_description','product_id')
    list_editable=('e_auction_start_date_time','e_auction_end_date_time','opening_price','quantity','e_auction_cancel','isCompleted','e_auction_description','product_id')
    list_per_page = 5
    #   QUERY IN BELOW (what fields should be considered)
    # search_fields =('product_photos_id','product_photo','product_id')    
    # list_filter = ('product_photos_id','product_id',)

class EAuctionUserDetailAdmin(admin.ModelAdmin):
    list_display=('cpk_user_id','cpk_e_auction_id','bidPrice','bidDateTime','isCancel',)
    list_editable=('bidPrice','bidDateTime','isCancel',)
    list_per_page = 5
    search_fields =('cpk_e_auction_id',)
    list_filter = ('cpk_e_auction_id',)
    list_display_links=('cpk_user_id','cpk_e_auction_id',)
class DeliveryAdmin(admin.ModelAdmin):
    list_display=('delivery_id','is_delivery_charges_paid','shop_no','shop_name','street_name','pincode','delivery_status','status_date_time','estimated_delivery_date_time','delivery_charges','isDelivered','eAuction_id',)
    # list_editable=('is_delivery_charges_paid','shop_no','shop_name','street_name','pincode','delivery_status','status_date_time','estimated_delivery_date_time','delivery_charges','isDelivered','eAuction_id',)

    list_per_page = 5
    #   QUERY BELOW
    search_fields =('delivery_id',)
    list_filter = ('delivery_id',)
    
   
  
 



admin.site.register(User_type,UserTypeAdmin)
admin.site.register(Area,AreaAdmin)
admin.site.register(User,UserAdmin)

admin.site.register(Payment,PaymentAdmin)

admin.site.register(Product,ProductAdmin)
admin.site.register(Product_category,ProductCategoryAdmin)
admin.site.register(EAuction,EAuctionAdmin)
admin.site.register(Delivery,DeliveryAdmin)
admin.site.register(EAuctionUserDetail,EAuctionUserDetailAdmin)
admin.site.register(Product_photos,ProductPhotosAdmin)

