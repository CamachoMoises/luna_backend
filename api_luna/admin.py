from django.contrib import admin
from .models import User, Profile


class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'email']


class ProfileAdmin(admin.ModelAdmin):
    list_editable = ['nombre_completo', 'bio']
    list_display = ['user', 'nombre_completo', 'bio']


admin.site.register(User, UserAdmin)
admin.site.register(Profile, ProfileAdmin)
