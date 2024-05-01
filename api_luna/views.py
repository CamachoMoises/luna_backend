from django.shortcuts import render
from .models import Profile, User, Productos
from .serializers import (
    UserSerializer,
    UserTokenObtainPairSerializer,
    RegisterSerilizer,
    ProductoSerializer,
    GroupSerializer,
    PermissionSerializer,
    UpdateUserSerializer,
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
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import HttpResponse


class UserTokenObtainView(TokenObtainPairView):
    serializer_class = UserTokenObtainPairSerializer


class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = [AllowAny]
    serializer_class = RegisterSerilizer


@api_view(["GET"])
@permission_classes([IsAuthenticated])
def userValidate(request, value, type):
    match type:
        case "email":
            user = User.objects.filter(email=value)
        case "username":
            user = User.objects.filter(username=value)
        case _:
            return Response({"exist": True}, status=status.HTTP_200_OK)
    print(value, user)
    if not user:
        return Response({"exist": False}, status=status.HTTP_200_OK)
    else:
        return Response({"exist": True}, status=status.HTTP_200_OK)


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


@api_view(["GET"])
@csrf_exempt  # Remove if not using CSRF tokens
def search_user(request):
    username = request.GET.get("username")
    email = request.GET.get("email")
    id = request.GET.get("id")
    users = User.objects.filter()
    if username:
        users = users.filter(username__icontains=username)
    if email:
        users = users.filter(email__icontains=email)
    if id:
        users = users.filter(id__icontains=id)
    serialized_users = []
    for user in users:
        serializer = UserSerializer(user, context={"request": request})
        serialized_users.append(serializer.data)
    return JsonResponse(
        {"users": serialized_users},
        status=status.HTTP_200_OK,
    )


@api_view(["POST", "PUT"])
@permission_classes([IsAuthenticated])
def userUpdate(request):
    password = request.data.get("password")
    selectGroups = request.data.get("selectGroups")
    selectPermission = request.data.get("selectPermission")
    if request.method == "PUT":
        user_id = request.data.get("user_id")
        try:
            userData = User.objects.filter(id=user_id).get()
            serializer = UpdateUserSerializer(userData, data=request.data, partial=True)
            if serializer.is_valid():
                serializer.save()
            else:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
            if password:
                userData.set_password(password)
                userData.save()
        except User.DoesNotExist:
            return Response(
                {"error": "User not found"}, status=status.HTTP_404_NOT_FOUND
            )

        try:
            for group in Group.objects.filter(user=userData):
                group.user_set.remove(userData)
        except Group.DoesNotExist:
            print("no existen grupos")
        except Exception as e:
            # Handle other potential exceptions (e.g., database errors)
            print("error grupos", e)
        try:
            for permission in Permission.objects.filter(user=userData):
                print(permission)
                permission.user_set.remove(userData)

        except Permission.DoesNotExist:
            print("no existen permisos")
        except Exception as e:
            # Handle other potential exceptions (e.g., database errors)
            print("error permisos", e)

        for x in selectGroups:
            groupl = Group.objects.filter(id=x).get()
            groupl.user_set.add(userData)
        for x in selectPermission:
            permissionUser = Permission.objects.filter(id=x).get()
            permissionUser.user_set.add(userData)
        response = f"Hey {request.user},  PUT METHOD"
        return Response({"response": response}, status=status.HTTP_200_OK)
    elif request.method == "POST":
        serializer = UpdateUserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            username = serializer.data["username"]
            userData = User.objects.filter(username=username).get()
            if password:
                userData.set_password(password)
                userData.save()
        for x in selectGroups:
            groupl = Group.objects.filter(id=x).get()
            groupl.user_set.add(userData)

        for x in selectPermission:
            permissionUser = Permission.objects.filter(id=x).get()
            permissionUser.user_set.add(userData)
        response = f"Hey {request.user}, POST METHOD"

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
