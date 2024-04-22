from rest_framework import routers
from rest_framework_simplejwt.views import TokenRefreshView
from django.urls import path, include
from . import views

# from .views import MyTokenObtainPairView
from rest_framework_simplejwt.views import TokenRefreshView


router = routers.DefaultRouter()

# router.register("productos", ProductoViewSet, "productos")
#  router.register("users", views.UserViewSet)
# router.register("groups", views.GroupViewSet)


# urlpatterns = router.urls
urlpatterns = [
    path('token/', views.UserTokenObtainView.as_view()),
    path('token/refresh/', TokenRefreshView.as_view()),
    path('register/', views.RegisterView.as_view()),
    path('dashboard/', views.dashboard),
    # path("login", views.login),
    # path("register", views.register),
    # path("profile", views.profile),
    # path("users", views.users),
    # path("api/v1/login", views.LoginView.as_view(), name="login"),
    # path("api-auth/", include("rest_framework.urls", namespace="rest_framework")),
    # path("api/v1/accounts", include("django.contrib.auth.urls")),
    # path("api/v1/token/", MyTokenObtainPairView.as_view(), name="token_obtain_pair"),
    # path("api/v1/token/refresh/", TokenRefreshView.as_view(), name="token_refresh"),
    path("api/v1/", include(router.urls)),
]
