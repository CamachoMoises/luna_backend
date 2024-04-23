from django.shortcuts import render
from .models import Profile, User, Productos
from .serializers import (
    UserSerializer,
    UserTokenObtainPairSerializer,
    RegisterSerilizer,
    ProductoSerializer,
    GroupSerializer,
    PermissionSerializer,
)
from rest_framework import generics, status, views, viewsets, permissions
from rest_framework.decorators import api_view, permission_classes, action
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from rest_framework_simplejwt.views import TokenObtainPairView
from rest_framework_simplejwt.tokens import RefreshToken
from django.http import JsonResponse
from django.contrib.auth import authenticate
from django.contrib.auth.models import Group, Permission
from django.contrib.auth.models import update_last_login


class UserTokenObtainView(TokenObtainPairView):
    serializer_class = UserTokenObtainPairSerializer


class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = [AllowAny]
    serializer_class = RegisterSerilizer


@api_view(["GET", "POST"])
@permission_classes([IsAuthenticated])
def dashboard(request):
    if request.method == "GET":
        context = f"Hey {request.user}, you are seeing a GET METHOD"
        return Response({"response": context}, status=status.HTTP_200_OK)
    elif request.method == "POST":
        text = request.POST.get("text")
        response = f"Hey {request.user},  POST METHOD and your text is:{text}"
        return Response({"response": response}, status=status.HTTP_200_OK)
    return Response({}, status=status.HTTP_400_BAD_REQUEST)


@api_view(["POST", "PUT"])
@permission_classes([IsAuthenticated])
def userUpdate(request):
    if request.method == "PUT":
        text = request.data.get("username")
        response = f"Hey {request.user},  PUT METHOD and your text is:{text}"
        print(request.data, request.method)
        return Response({"response": response}, status=status.HTTP_200_OK)
    elif request.method == "POST":
        text = request.data.get("username")
        response = f"Hey {request.user},  POST METHOD and your text is:{text}"
        print(text, request.method)
        return Response({"response": response}, status=status.HTTP_200_OK)


class LoginView(views.APIView):
    def post(self, request):
        username = request.data.get("username")
        password = request.data.get("password")
        user = authenticate(email=username, password=password)
        print(user)
        if user is not None:
            update_last_login(None, user)
            email = user.email
            serializer = UserSerializer(user, context={"request": request})
            user_data = serializer.data
            refresh = RefreshToken.for_user(user)
            return JsonResponse(
                {
                    "refresh": str(refresh),
                    "token": str(refresh.access_token),
                    "email": str(email),
                    "username": str(user),
                    "user_data": user_data,
                },
                status=status.HTTP_201_CREATED,
            )
        else:
            return JsonResponse(
                {"error": "Invalid credentials"}, status=status.HTTP_400_BAD_REQUEST
            )


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """

    queryset = User.objects.all().order_by("-date_joined")
    serializer_class = UserSerializer
    permission_classes = [permissions.AllowAny]


class ProductoViewSet(viewsets.ModelViewSet):
    queryset = Productos.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class = ProductoSerializer

    @action(detail=True, methods=["POST"])
    def done(self, request, pk=None):
        Productos = self.get_object()
        Productos.status = not Productos.status
        Productos.save()
        return Response(
            {
                "success": "estatus Activado"
                if Productos.status
                else "estatus Desactivado"
            },
            status=status.HTTP_200_OK,
        )


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """

    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.AllowAny]


class PermissionViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """

    queryset = Permission.objects.all()
    serializer_class = PermissionSerializer
    permission_classes = [permissions.AllowAny]
