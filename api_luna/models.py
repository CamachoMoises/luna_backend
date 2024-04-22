from django.db import models
from django.contrib.auth.models import AbstractUser
from django.db.models.signals import post_save
# Create your models here.


class User (AbstractUser):
    username = models.CharField(max_length=100)
    email = models. EmailField(unique=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    def __str__(self):
        return self.username

        # profile = Profile.objects.get(user=self)

    class Meta:
        db_table = "users"


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    bio = models.TextField(blank=True, null=True, max_length=2500)
    imagen = models.TextField(blank=True, null=True)
    nombre_rol = models.TextField(blank=True, null=True, max_length=250,)
    nombre_completo = models.CharField(max_length=250, null=True, blank=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.nombre_completo

    class Meta:
        db_table = "profile"


def create_user_profile(sender, instance, created, ** kwargs):
    if created:
        Profile.objects.create(user=instance)


def save_user_profile(sender, instance, ** kwargs):
    instance.profile.save()


post_save.connect(create_user_profile, sender=User)
post_save.connect(save_user_profile, sender=User)


class UnidadNegocio(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=95)
    slug = models.CharField(max_length=150, blank=True, null=True)
    codigo = models.CharField(max_length=5)
    status = models.IntegerField()
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "unidad_negocio"


class OrigenCompra(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=250, blank=True, null=True)
    codigo = models.CharField(max_length=5, blank=True, null=True)
    modulo = models.CharField(max_length=4, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "origen_compra"


class Categoria(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=95)
    slug = models.CharField(max_length=150, blank=True, null=True)
    codigo = models.CharField(max_length=5)
    modulo = models.CharField(max_length=5)
    status = models.IntegerField()
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "categoria"


class SubCategoria(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.ForeignKey(Categoria, models.DO_NOTHING)
    descripcion = models.CharField(max_length=150)
    slug = models.CharField(max_length=95)
    codigo = models.CharField(max_length=5)
    modulo = models.CharField(max_length=4)
    status = models.IntegerField()
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "sub_categoria"


class Moneda(models.Model):
    nombre = models.TextField()
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "moneda"


class Fabricante(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "fabricante"


class Proveedor(models.Model):
    id = models.IntegerField(primary_key=True)
    tipo_proveedor = models.IntegerField(blank=True, null=True)
    rif = models.CharField(max_length=25)
    nombre = models.CharField(max_length=95, blank=True, null=True)
    razon_social = models.CharField(max_length=90, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "proveedor"


class Pais(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = "pais"


class Estado(models.Model):
    id = models.IntegerField(primary_key=True)
    estado = models.CharField(max_length=150)
    iso_3166_2 = models.CharField(
        db_column="iso_3166-2", max_length=15, blank=True, null=True
    )  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = "estado"


class Sucursal(models.Model):
    nombre = models.TextField()
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "sucursal"


class TipoCliente(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=15, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "tipo_cliente"


class TipoDocumento(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=1)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "tipo_documento"


class TipoRedSocial(models.Model):
    nombre = models.CharField(
        unique=True, max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = "tipo_red_social"


class TipoTelefono(models.Model):
    nombre = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = "tipo_telefono"


class TipoImpuesto(models.Model):
    nombre = models.CharField(max_length=50)
    porcentaje = models.FloatField()
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "tipo_impuesto"


class Profesion(models.Model):
    nombre = models.TextField()
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "profesion"


class Productos(models.Model):
    id = models.IntegerField(
        primary_key=True
        # The composite primary key (id, sku) found, that is not supported. The first column is selected.
    )
    sku = models.CharField(unique=True, max_length=12)
    unidad_negocio = models.ForeignKey(UnidadNegocio, models.DO_NOTHING)
    origen_compra = models.ForeignKey(OrigenCompra, models.DO_NOTHING)
    categoria = models.ForeignKey(Categoria, models.DO_NOTHING)
    sub_categoria = models.ForeignKey(SubCategoria, models.DO_NOTHING)
    imagen = models.CharField(max_length=250, blank=True, null=True)
    cod_prod = models.CharField(max_length=5)
    cod_prod_proveedor = models.CharField(
        max_length=300, blank=True, null=True)
    codigo_barra = models.CharField(max_length=95, blank=True, null=True)
    nombre = models.TextField()
    nombre_odoo = models.TextField()
    descripcion = models.TextField()
    fecha_venta = models.IntegerField(blank=True, null=True)
    costo_unitario = models.FloatField(blank=True, null=True)
    costo_envio = models.FloatField(blank=True, null=True)
    costo = models.FloatField(blank=True, null=True)
    precio_sin_iva = models.FloatField(blank=True, null=True)
    precio_mayor = models.FloatField(blank=True, null=True)
    iva = models.FloatField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    proveedor = models.ForeignKey(Proveedor, models.DO_NOTHING)
    fabricante = models.ForeignKey(
        Fabricante, models.DO_NOTHING, blank=True, null=True)
    presentacion_venta_id = models.IntegerField(blank=True, null=True)
    outlet = models.IntegerField()
    status = models.IntegerField(blank=True, null=True)
    mayor = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "productos"
        unique_together = (("id", "sku"),)


class TasaDia(models.Model):
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    fecha = models.DateField()
    monto_bs = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "tasa_dia"


class Servicios(models.Model):
    id = models.IntegerField(
        primary_key=True
        # The composite primary key (id, sku) found, that is not supported. The first column is selected.
    )
    sku = models.CharField(unique=True, max_length=12)
    unidad_negocio = models.ForeignKey(UnidadNegocio, models.DO_NOTHING)
    origen_compra = models.ForeignKey(OrigenCompra, models.DO_NOTHING)
    categoria = models.ForeignKey(Categoria, models.DO_NOTHING)
    sub_categoria = models.ForeignKey(SubCategoria, models.DO_NOTHING)
    cod_serv = models.CharField(max_length=5)
    nombre = models.TextField()
    descripcion = models.TextField(blank=True, null=True)
    costo = models.FloatField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    precio_iva = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "servicios"
        unique_together = (("id", "sku"),)


class Banco(models.Model):
    nombre = models.TextField()
    pais = models.ForeignKey(Pais, models.DO_NOTHING)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "banco"


class Caja(models.Model):
    nombre = models.CharField(max_length=150)
    nombre_equipo = models.CharField(max_length=150)
    serial_impresora = models.CharField(max_length=25)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "caja"


class Ciudad(models.Model):
    id = models.IntegerField(primary_key=True)
    estado = models.ForeignKey(Estado, models.DO_NOTHING)
    nombre = models.CharField(max_length=200)
    capital = models.IntegerField()

    class Meta:
        managed = False
        db_table = "ciudad"


class Cliente(models.Model):
    id = models.IntegerField(primary_key=True)
    tipo_cliente = models.ForeignKey(TipoCliente, models.DO_NOTHING)
    tipo_documento = models.ForeignKey(TipoDocumento, models.DO_NOTHING)
    pais = models.ForeignKey(Pais, models.DO_NOTHING)
    estado = models.ForeignKey(Estado, models.DO_NOTHING)
    ciudad = models.ForeignKey(Ciudad, models.DO_NOTHING)
    profesion = models.ForeignKey(Profesion, models.DO_NOTHING)
    numero_documento = models.IntegerField()
    club_joy = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length=90, blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    nombre_comercial = models.CharField(max_length=75, blank=True, null=True)
    razon_social = models.CharField(max_length=75)
    telefono_principal = models.CharField(max_length=45, blank=True, null=True)
    observacion = models.CharField(max_length=45, blank=True, null=True)
    direccion = models.CharField(max_length=250, blank=True, null=True)
    zona = models.CharField(max_length=50, blank=True, null=True)
    agente_retencion = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cliente"


class ClienteContacto(models.Model):
    tipo_documento = models.ForeignKey(TipoDocumento, models.DO_NOTHING)
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    nombre = models.CharField(max_length=150)
    numero_documento = models.CharField(max_length=45)
    telefono = models.CharField(max_length=15, blank=True, null=True)
    email = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cliente_contacto"


class ClienteDirecciones(models.Model):
    nombre = models.CharField(max_length=150)
    ciudad = models.ForeignKey(Ciudad, models.DO_NOTHING)
    estado = models.ForeignKey(Estado, models.DO_NOTHING)
    pais = models.ForeignKey(Pais, models.DO_NOTHING)
    zona = models.CharField(max_length=150, blank=True, null=True)
    direccion = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cliente_direcciones"


class ClienteRedSocial(models.Model):
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    tipo_red_social = models.ForeignKey(TipoRedSocial, models.DO_NOTHING)
    nombre = models.CharField(max_length=50)
    usuario_red_social = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = "cliente_red_social"


class ClienteTelefono(models.Model):
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    tipo_telefono = models.ForeignKey(TipoTelefono, models.DO_NOTHING)
    numero = models.CharField(max_length=10)
    nombre = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = "cliente_telefono"


class CotizacionStatus(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.TextField()
    status = models.IntegerField()
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cotizacion_status"


class Cotizacion(models.Model):
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    cotizacion_status = models.ForeignKey(CotizacionStatus, models.DO_NOTHING)
    tasa_dia = models.ForeignKey(TasaDia, models.DO_NOTHING)
    nombre = models.TextField(blank=True, null=True)
    observacion = models.CharField(max_length=500, blank=True, null=True)
    costo_total = models.FloatField(blank=True, null=True)
    precio_total = models.FloatField(blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cotizacion"


class CotizacionDetalle(models.Model):
    cotizacion = models.ForeignKey(Cotizacion, models.DO_NOTHING)
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id", blank=True, null=True
    )
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="cotizaciondetalle_productos_sku_set",
        blank=True,
        null=True,
    )
    servicios_sku = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        db_column="servicios_sku",
        to_field="sku",
        blank=True,
        null=True,
    )
    servicios = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        related_name="cotizaciondetalle_servicios_set",
        blank=True,
        null=True,
    )
    cantidad = models.IntegerField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    precio_descuento = models.FloatField(blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cotizacion_detalle"


class CotizacionImpuesto(models.Model):
    cotizacion = models.ForeignKey(Cotizacion, models.DO_NOTHING)
    tipo_impuesto = models.ForeignKey(TipoImpuesto, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = "cotizacion_impuesto"


class Cuenta(models.Model):
    id = models.IntegerField(primary_key=True)
    banco = models.ForeignKey(Banco, models.DO_NOTHING)
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    tipo_cuenta = models.IntegerField()
    numero_cuenta = models.CharField(max_length=45, blank=True, null=True)
    propietario = models.CharField(max_length=150, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cuenta"


class Cupon(models.Model):
    codigo = models.CharField(max_length=25)
    cliente = models.ForeignKey(
        Cliente, models.DO_NOTHING, blank=True, null=True)
    monto = models.FloatField(blank=True, null=True)
    porcentaje = models.FloatField(blank=True, null=True)
    fecha_inicio = models.DateTimeField(blank=True, null=True)
    fecha_fin = models.DateTimeField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "cupon"


class PedidoStatus(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "pedido_status"


class Pedido(models.Model):
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    pedido_status = models.ForeignKey(PedidoStatus, models.DO_NOTHING)
    tasa_dia = models.ForeignKey(TasaDia, models.DO_NOTHING)
    cotizacion = models.ForeignKey(
        Cotizacion, models.DO_NOTHING, blank=True, null=True)
    codigo = models.CharField(max_length=20, blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    costo_total = models.FloatField(blank=True, null=True)
    precio_total = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "pedido"


class Factura(models.Model):
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    tasa_dia = models.ForeignKey(TasaDia, models.DO_NOTHING)
    pedido = models.ForeignKey(Pedido, models.DO_NOTHING)
    caja = models.ForeignKey(Caja, models.DO_NOTHING)
    sucursal = models.ForeignKey(Sucursal, models.DO_NOTHING)
    tipo_pago = models.IntegerField(blank=True, null=True)
    codigo = models.CharField(max_length=15, blank=True, null=True)
    serial_impresora = models.CharField(max_length=25, blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    costo_total = models.FloatField(blank=True, null=True)
    precio_total = models.FloatField(blank=True, null=True)
    monto_total = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura"


class Devolucion(models.Model):
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    caja = models.ForeignKey(Caja, models.DO_NOTHING)
    sucursal = models.ForeignKey(Sucursal, models.DO_NOTHING)
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    tipo_devolucion = models.IntegerField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    monto_total = models.FloatField(blank=True, null=True)
    codigo = models.CharField(max_length=15, blank=True, null=True)
    serial_impresora = models.CharField(max_length=25, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "devolucion"


class DevolucionDetalle(models.Model):
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id", blank=True, null=True
    )
    devolucion = models.ForeignKey(
        Devolucion, models.DO_NOTHING, blank=True, null=True)
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="devoluciondetalle_productos_sku_set",
        blank=True,
        null=True,
    )
    servicios_sku = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        db_column="servicios_sku",
        to_field="sku",
        blank=True,
        null=True,
    )
    servicios = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        related_name="devoluciondetalle_servicios_set",
        blank=True,
        null=True,
    )
    cantidad = models.IntegerField()
    precio = models.FloatField(blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "devolucion_detalle"


class DevolucionImpuestos(models.Model):
    devolucion = models.ForeignKey(Devolucion, models.DO_NOTHING)
    tipo_impuesto = models.ForeignKey(TipoImpuesto, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    porcentaje = models.FloatField(blank=True, null=True)
    monto_imponible = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "devolucion_impuestos"


class DevolucionSaldoAfavor(models.Model):
    devolucion = models.ForeignKey(Devolucion, models.DO_NOTHING)
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "devolucion_saldo_afavor"


class FacturaAbono(models.Model):
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura_abono"


class FacturaDetalle(models.Model):
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id", blank=True, null=True
    )
    servicios = models.ForeignKey(
        Servicios, models.DO_NOTHING, blank=True, null=True)
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="facturadetalle_productos_sku_set",
        blank=True,
        null=True,
    )
    servicios_sku = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        db_column="servicios_sku",
        to_field="sku",
        related_name="facturadetalle_servicios_sku_set",
        blank=True,
        null=True,
    )
    cantidad = models.IntegerField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura_detalle"


class FormaPago(models.Model):
    nombre = models.TextField()
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "forma_pago"


class FacturaFormaPago(models.Model):
    forma_pago = models.ForeignKey(FormaPago, models.DO_NOTHING)
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    cuenta = models.ForeignKey(
        Cuenta, models.DO_NOTHING, blank=True, null=True)
    banco_origen = models.ForeignKey(
        Banco, models.DO_NOTHING, blank=True, null=True)
    referencia = models.CharField(max_length=25, blank=True, null=True)
    monto = models.FloatField(blank=True, null=True)
    numero_documento = models.FloatField(blank=True, null=True)
    fecha_pago = models.DateField(blank=True, null=True)
    imagen_referencia = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura_forma_pago"


class FacturaImpuesto(models.Model):
    id = models.IntegerField(primary_key=True)
    tipo_impuesto = models.ForeignKey(TipoImpuesto, models.DO_NOTHING)
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    porcentaje = models.FloatField(blank=True, null=True)
    monto_imponible = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura_impuesto"


class SaldoAfavor(models.Model):
    factura = models.ForeignKey(Factura, models.DO_NOTHING)
    moneda = models.ForeignKey(Moneda, models.DO_NOTHING)
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING)
    devolucion = models.ForeignKey(Devolucion, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "saldo_afavor"


class FacturaPagoSaldoAfavor(models.Model):
    saldo_afavor = models.ForeignKey(SaldoAfavor, models.DO_NOTHING)
    factura_forma_pago = models.ForeignKey(FacturaFormaPago, models.DO_NOTHING)
    monto = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "factura_pago_saldo_afavor"


class MovimientoDia(models.Model):
    devolucion = models.ForeignKey(
        Devolucion, models.DO_NOTHING, blank=True, null=True)
    factura = models.ForeignKey(
        Factura, models.DO_NOTHING, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "movimiento_dia"


class Parametro(models.Model):
    nombre_empresa = models.CharField(max_length=150, blank=True, null=True)
    numero_documento = models.IntegerField(blank=True, null=True)
    direccion = models.CharField(max_length=500, blank=True, null=True)
    telefono = models.CharField(max_length=15, blank=True, null=True)
    mensaje_factura = models.CharField(max_length=200, blank=True, null=True)
    mensaje_pedido = models.CharField(max_length=200, blank=True, null=True)
    mensaje_cotizacion = models.CharField(
        max_length=200, blank=True, null=True)
    mensaje_devolucion = models.CharField(
        max_length=200, blank=True, null=True)
    mensaje_documentos = models.CharField(
        max_length=200, blank=True, null=True)
    maximo_descuento = models.FloatField(blank=True, null=True)
    imagen = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = "parametro"


class PedidoDetalle(models.Model):
    id = models.IntegerField(primary_key=True)
    pedido = models.ForeignKey(
        Pedido, models.DO_NOTHING, blank=True, null=True)
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id", blank=True, null=True
    )
    servicios = models.ForeignKey(
        Servicios, models.DO_NOTHING, blank=True, null=True)
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="pedidodetalle_productos_sku_set",
        blank=True,
        null=True,
    )
    servicios_sku = models.ForeignKey(
        Servicios,
        models.DO_NOTHING,
        db_column="servicios_sku",
        to_field="sku",
        related_name="pedidodetalle_servicios_sku_set",
        blank=True,
        null=True,
    )
    cantidad = models.IntegerField(blank=True, null=True)
    precio = models.FloatField(blank=True, null=True)
    precio_descuento = models.FloatField(blank=True, null=True)
    descuento = models.FloatField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "pedido_detalle"


class PedidoImpuesto(models.Model):
    pedido = models.ForeignKey(Pedido, models.DO_NOTHING)
    tipo_impuesto = models.ForeignKey(TipoImpuesto, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = "pedido_impuesto"


class ProductoSucursal(models.Model):
    sucursal = models.ForeignKey(Sucursal, models.DO_NOTHING)
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id"
    )
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="productosucursal_productos_sku_set",
    )
    inventario = models.IntegerField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "producto_sucursal"


class ProductoHistoricoSucursal(models.Model):
    id = models.IntegerField(primary_key=True)
    productos = models.ForeignKey(
        Productos, models.DO_NOTHING, db_column="productos_id"
    )
    productos_sku = models.ForeignKey(
        Productos,
        models.DO_NOTHING,
        db_column="productos_sku",
        to_field="sku",
        related_name="productohistoricosucursal_productos_sku_set",
    )
    producto_sucursal = models.ForeignKey(ProductoSucursal, models.DO_NOTHING)
    inventario_ant = models.IntegerField(blank=True, null=True)
    inventario_nuevo = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "producto_historico_sucursal"
