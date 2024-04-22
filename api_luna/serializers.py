from rest_framework import serializers
from .models import Productos, User
from django.contrib.auth.password_validation import validate_password
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework import serializers


class UserSerializer(serializers.ModelSerializer):
    # user_permissions = serializers.SerializerMethodField()
    class Meta:
        model = User
        fields = [
            "id",
            "url",
            "username",
            "email",
            "password",
        ]


class UserTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        token['nombre_completo'] = user.profile.nombre_completo
        token['imagen'] = str(user.profile.imagen)
        token['bio'] = user.profile.bio
        token['username'] = user.username
        token['email'] = user.email
        token["is_superuser"] = user.is_superuser
        token["is_staff"] = user.is_staff

        return token


class RegisterSerilizer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True, required=True, validators=[validate_password])
    password2 = serializers.CharField(
        write_only=True, required=True)

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'password2']

    def validate(self, attrs):
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError(
                {"password": "Las contraseñas no coinciden"}
            )
        return attrs

    def create(self, validated_data):
        # Creamos el usuario sin asignarle un perfil
        user = User.objects.create(
            username=validated_data['username'],
            email=validated_data['email'],
        )
        user.set_password(validated_data['password'])
        user.save()
        return user
