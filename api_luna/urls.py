from rest_framework import routers
from rest_framework_simplejwt.views import TokenRefreshView
from django.urls import path, include
from . import views

# from .views import MyTokenObtainPairView
from rest_framework_simplejwt.views import TokenRefreshView


router = routers.DefaultRouter()

router.register("productos", views.ProductoViewSet, "productos")
router.register("grupos", views.GroupViewSet, "grupos")
router.register("permisos", views.PermissionViewSet, "permisos")
router.register("users", views.UserViewSet)
# router.register("groups", views.GroupViewSet)

# urlpatterns = router.urls
urlpatterns = [
    path("token/", views.UserTokenObtainView.as_view()),
    path("token/refresh/", TokenRefreshView.as_view()),
    path("register/", views.RegisterView.as_view()),
    path("dashboard/", views.dashboard),
    path("v1/userUpdate/", views.userUpdate),
    path("v1/login", views.LoginView.as_view(), name="login"),
    path("v1/", include(router.urls)),
]
