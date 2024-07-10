from rest_framework.serializers import PrimaryKeyRelatedField
from rest_framework.serializers import *
from rest_framework import serializers
from .models import *


# Area
class AreaSerializer(serializers.ModelSerializer):
    class Meta:
        model=Area
        fields='__all__'
    
    def validate_unique_field(self, value):
        if Area.objects.filter(unique_field=value).exists():
            raise serializers.ValidationError("The value must be unique.")
        return value
    
    def create(self, validated_data):
        # Perform custom validation before creating the object
        # pincode
        pincode = validated_data.get('pincode')
        if Area.objects.filter(pincode=pincode).exists():
            raise serializers.ValidationError("pincode must be unique.")
        # area name
        area_name = validated_data.get('area_name')
        if Area.objects.filter(area_name=area_name).exists():
            raise serializers.ValidationError("area name must be unique.")
        
        return Area.objects.create(**validated_data)
    
    # def validate(self,data):
        
    #     if data['area_name']:
    #         for n in data['area_name']:
    #             if n.isdigit():
    #                 raise serializers.ValidationError({'error':'area name cannot contain numbers'})
        
    #     return data

# User_type
class User_typeSerializer(serializers.ModelSerializer):
    class Meta:
        model=User_type
        fields='__all__'
    
    def validate_unique_field(self, value):
        if User_type.objects.filter(unique_field=value).exists():
            raise serializers.ValidationError("The value must be unique.")
        return value
    
    def create(self, validated_data):
        # Perform custom validation before creating the object
        # user_type_id
        user_type_id = validated_data.get('user_type_id')
        if User_type.objects.filter(user_type_id=user_type_id).exists():
            raise serializers.ValidationError("User_type_id must be unique.")
        # user_type_name
        user_type_name = validated_data.get('user_type_name')
        if User_type.objects.filter(user_type_name=user_type_name).exists():
            raise serializers.ValidationError("user_type_name must be unique.")
        
        return User_type.objects.create(**validated_data)

    
    # def validate(self,data):
        
    #     if data['user_type_name']:
    #         for n in data['user_type_name']:
    #             if n.isdigit():
    #                 raise serializers.ValidationError({'error':'user type name cannot contain numbers'})
        
    #     return data

# Product_category
class Product_categorySerializer(serializers.ModelSerializer):
    class Meta:
        model=Product_category
        # fields='__all__'
        exclude=['product_category_image',]
    
    def validate_unique_field(self, value):
        if Product_category.objects.filter(unique_field=value).exists():
            raise serializers.ValidationError("The value must be unique.")
        return value
    
    def create(self, validated_data):
        # Perform custom validation before creating the object
        # product_category_id
        product_category_id = validated_data.get('product_category_id')
        if Product_category.objects.filter(product_category_id=product_category_id).exists():
            raise serializers.ValidationError("product_category_id must be unique.")
        # product_category_name
        product_category_name = validated_data.get('product_category_name')
        if Product_category.objects.filter(product_category_name=product_category_name).exists():
            raise serializers.ValidationError("product_category_name must be unique.")
        
        return Product_category.objects.create(**validated_data)



    # def validate(self,data):
        
    #     if data['product_category_name']:
    #         for n in data['product_category_name']:
    #             if n.isdigit():
    #                 raise serializers.ValidationError({'error':'product category name cannot contain numbers'})
        
    #     return data
    
#  User
class UserSerializer(serializers.ModelSerializer):
    # user_type_id=PrimaryKeyRelatedField(many=True,queryset=User_type.objects.all())
    # pincode=PrimaryKeyRelatedField(many=True,queryset=Area.objects.all())
    # user_type_id = serializers.IntegerField(source='User_type.user_type_id')
    # user_type_id=User_typeSerializer()
    # pincode=AreaSerializer()
    class Meta:
        model=User
        fields='__all__'
        # exclude=['display_picture',]
    
    def validate_unique_field(self, value):
        if User.objects.filter(unique_field=value).exists():
            raise serializers.ValidationError("The value must be unique.")
        return value
    
    def create(self, validated_data):
        # Perform custom validation before creating the object
        # email
        email = validated_data.get('email')
        if User.objects.filter(email=email).exists():
            raise serializers.ValidationError("email must be unique.")
        # mobile
        mobile = validated_data.get('mobile')
        if User.objects.filter(mobile=mobile).exists():
            raise serializers.ValidationError("mobile must be unique.")
        
        return User.objects.create(**validated_data)

    


    # def create(self, validated_data):
    #     # user_type_data = validated_data.pop('user_type_id')
    #     # user_type_id = User_type.objects.filter(**user_type_data)
    #     # user_type_id = User_type.objects.filter(user_type_id=user_type_id, **validated_data)
    #     # area_data = validated_data.pop('area_name')
    #     # pincode = Area.objects.filter(**area_data)
    #     # pincode = Area.objects.filter(pincode=pincode, **validated_data)
        
    #     # return user_type_id,pincode

#  Product
class ProductSerializer(serializers.ModelSerializer):
    # user_id=UserSerializer()
    # product_category_id=Product_categorySerializer()
    class Meta:
        model=Product
        fields='__all__'

    def validate_unique_field(self, value):
        if Product.objects.filter(unique_field=value).exists():
            raise serializers.ValidationError("The value must be unique.")
        return value
    
    def create(self, validated_data):
        # Perform custom validation before creating the object
        # product_name,user_id
        product_name = validated_data.get('product_name')
        user_id = validated_data.get('user_id')
        if Product.objects.filter(product_name=product_name,user_id=user_id).exists():
            raise serializers.ValidationError("product_name related to user id must be unique.")
        
        
        return Product.objects.create(**validated_data)

    
    # def create(self, validated_data):
    #     user_data = validated_data.pop('user_id')
    #     user_id = User.objects.filter(**user_data)
    #     user_id = User.objects.filter(user_id=user_id, **validated_data)
    #     product_category_data = validated_data.pop('product_category_name')
    #     product_category_id = Product_category.objects.filter(**product_category_data)
    #     product_category_id = Product_category.objects.filter(product_category_id=product_category_id, **validated_data)
        
    #     return user_id,product_category_id

#  EAuction
class EAuctionSerializer(serializers.ModelSerializer):
   
    class Meta:
        model=EAuction
        fields='__all__'

#  EAuctionUserDetail
class EAuctionUserDetailSerializer(serializers.ModelSerializer):
   
    class Meta:
        model=EAuctionUserDetail
        fields='__all__'

#  Product_photos
class Product_photosSerializer(serializers.ModelSerializer):
   
    class Meta:
        model=Product_photos
        fields='__all__'

#  Payment
class PaymentSerializer(serializers.ModelSerializer):
   
    class Meta:
        model=Payment
        fields='__all__'

#  Delivery
class DeliverySerializer(serializers.ModelSerializer):
   
    class Meta:
        model=Delivery
        fields='__all__'