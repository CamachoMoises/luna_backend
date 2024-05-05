from rest_framework import serializers
from .models import Productos, User, Profile, Group as groupDetails
from django.contrib.auth.password_validation import validate_password
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from django.contrib.auth.models import Group, Permission


class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profile
        fields = ["imagen", "bio"]


class GroupSerializer(serializers.ModelSerializer):
    users = serializers.SerializerMethodField()
    details = serializers.SerializerMethodField()
    status = serializers.SerializerMethodField()

    class Meta:
        model = Group
        fields = ["id", "name", "permissions", "status", "details", "users"]

    def get_users(self, obj):
        return [
            {"id": user.id, "username": user.username} for user in obj.user_set.all()
        ]

    def get_status(self, obj):
        group = groupDetails.objects.filter(name=obj).get()
        return group.status

    def get_details(self, obj):
        group = groupDetails.objects.filter(name=obj).get()
        return {
            "created_at": group.created_at,
            "updated_at": group.updated_at,
        }


class UserSerializer(serializers.ModelSerializer):
    # user_permissions = serializers.SerializerMethodField()
    profileData = ProfileSerializer(source="profile", read_only=True)
    permissions = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = [
            "id",
            "url",
            "username",
            "email",
            "groups",
            "first_name",
            "last_name",
            "password",
            "is_active",
            "is_staff",
            "is_superuser",
            "profileData",
            "permissions",
            "last_login",
        ]

    def get_permissions(self, obj):
        user = obj
        permissions = user.user_permissions.values_list("id", flat=True)
        return list(permissions)


class UserTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        token["nombre_completo"] = user.profile.nombre_completo
        token["imagen"] = str(user.profile.imagen)
        token["bio"] = user.profile.bio
        token["username"] = user.username
        token["email"] = user.email
        token["is_superuser"] = user.is_superuser
        token["is_staff"] = user.is_staff

        return token


class RegisterSerilizer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True, required=True, validators=[validate_password]
    )
    password2 = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = User
        fields = ["username", "email", "password", "password2"]

    def validate(self, attrs):
        if attrs["password"] != attrs["password2"]:
            raise serializers.ValidationError(
                {"password": "Las contraseñas no coinciden"}
            )
        return attrs

    def create(self, validated_data):
        # Creamos el usuario sin asignarle un perfil
        user = User.objects.create(
            username=validated_data["username"],
            email=validated_data["email"],
        )
        user.set_password(validated_data["password"])
        user.save()
        return user


class ProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Productos
        fields = (
            "id",
            "nombre",
            "sku",
            "nombre_odoo",
            "descripcion",
            "costo_unitario",
            "costo_envio",
            "status",
            "created_at",
            "updated_at",
        )  # Campos que se van a mostrar en la API
        read_only_fields = ("id", "created_at", "updated_at")


class PermissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Permission
        fields = ["id", "name", "codename"]


class UpdateUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        # Specify fields allowed for update (consider using permissions)
        fields = [
            "username",
            "email",
            "first_name",
            "last_name",
            "is_active",
            "is_staff",
            "is_superuser",
        ]  # Update allowed fields
        extra_kwargs = {"password": {"write_only": True}}  # Hide
