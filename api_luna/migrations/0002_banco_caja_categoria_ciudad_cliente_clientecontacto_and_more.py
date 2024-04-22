# Generated by Django 5.0.4 on 2024-04-22 01:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api_luna', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Banco',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'banco',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Caja',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=150)),
                ('nombre_equipo', models.CharField(max_length=150)),
                ('serial_impresora', models.CharField(max_length=25)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'caja',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=95)),
                ('slug', models.CharField(blank=True, max_length=150, null=True)),
                ('codigo', models.CharField(max_length=5)),
                ('modulo', models.CharField(max_length=5)),
                ('status', models.IntegerField()),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'categoria',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Ciudad',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=200)),
                ('capital', models.IntegerField()),
            ],
            options={
                'db_table': 'ciudad',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('numero_documento', models.IntegerField()),
                ('club_joy', models.IntegerField(blank=True, null=True)),
                ('correo', models.CharField(blank=True, max_length=90, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('nombre_comercial', models.CharField(blank=True, max_length=75, null=True)),
                ('razon_social', models.CharField(max_length=75)),
                ('telefono_principal', models.CharField(blank=True, max_length=45, null=True)),
                ('observacion', models.CharField(blank=True, max_length=45, null=True)),
                ('direccion', models.CharField(blank=True, max_length=250, null=True)),
                ('zona', models.CharField(blank=True, max_length=50, null=True)),
                ('agente_retencion', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cliente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClienteContacto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=150)),
                ('numero_documento', models.CharField(max_length=45)),
                ('telefono', models.CharField(blank=True, max_length=15, null=True)),
                ('email', models.CharField(blank=True, max_length=150, null=True)),
            ],
            options={
                'db_table': 'cliente_contacto',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClienteDirecciones',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=150)),
                ('zona', models.CharField(blank=True, max_length=150, null=True)),
                ('direccion', models.CharField(blank=True, max_length=500, null=True)),
            ],
            options={
                'db_table': 'cliente_direcciones',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClienteRedSocial',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('usuario_red_social', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'cliente_red_social',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClienteTelefono',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero', models.CharField(max_length=10)),
                ('nombre', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'cliente_telefono',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cotizacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField(blank=True, null=True)),
                ('observacion', models.CharField(blank=True, max_length=500, null=True)),
                ('costo_total', models.FloatField(blank=True, null=True)),
                ('precio_total', models.FloatField(blank=True, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cotizacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CotizacionDetalle',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('precio_descuento', models.FloatField(blank=True, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cotizacion_detalle',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CotizacionImpuesto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'cotizacion_impuesto',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CotizacionStatus',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.TextField()),
                ('status', models.IntegerField()),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cotizacion_status',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cuenta',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('tipo_cuenta', models.IntegerField()),
                ('numero_cuenta', models.CharField(blank=True, max_length=45, null=True)),
                ('propietario', models.CharField(blank=True, max_length=150, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cuenta',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cupon',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=25)),
                ('monto', models.FloatField(blank=True, null=True)),
                ('porcentaje', models.FloatField(blank=True, null=True)),
                ('fecha_inicio', models.DateTimeField(blank=True, null=True)),
                ('fecha_fin', models.DateTimeField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cupon',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Devolucion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_devolucion', models.IntegerField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('monto_total', models.FloatField(blank=True, null=True)),
                ('codigo', models.CharField(blank=True, max_length=15, null=True)),
                ('serial_impresora', models.CharField(blank=True, max_length=25, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'devolucion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DevolucionDetalle',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField()),
                ('precio', models.FloatField(blank=True, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'devolucion_detalle',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DevolucionImpuestos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('monto', models.FloatField(blank=True, null=True)),
                ('porcentaje', models.FloatField(blank=True, null=True)),
                ('monto_imponible', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'devolucion_impuestos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DevolucionSaldoAfavor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('monto', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'devolucion_saldo_afavor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Estado',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('estado', models.CharField(max_length=150)),
                ('iso_3166_2', models.CharField(blank=True, db_column='iso_3166-2', max_length=15, null=True)),
            ],
            options={
                'db_table': 'estado',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Fabricante',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=45, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'fabricante',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Factura',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_pago', models.IntegerField(blank=True, null=True)),
                ('codigo', models.CharField(blank=True, max_length=15, null=True)),
                ('serial_impresora', models.CharField(blank=True, max_length=25, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('costo_total', models.FloatField(blank=True, null=True)),
                ('precio_total', models.FloatField(blank=True, null=True)),
                ('monto_total', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaAbono',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('monto', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura_abono',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaDetalle',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura_detalle',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaFormaPago',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('referencia', models.CharField(blank=True, max_length=25, null=True)),
                ('monto', models.FloatField(blank=True, null=True)),
                ('numero_documento', models.FloatField(blank=True, null=True)),
                ('fecha_pago', models.DateField(blank=True, null=True)),
                ('imagen_referencia', models.TextField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura_forma_pago',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaImpuesto',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('monto', models.FloatField(blank=True, null=True)),
                ('porcentaje', models.FloatField(blank=True, null=True)),
                ('monto_imponible', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura_impuesto',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaPagoSaldoAfavor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('monto', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'factura_pago_saldo_afavor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FormaPago',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'forma_pago',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Moneda',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'moneda',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='MovimientoDia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'movimiento_dia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='OrigenCompra',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=250, null=True)),
                ('codigo', models.CharField(blank=True, max_length=5, null=True)),
                ('modulo', models.CharField(blank=True, max_length=4, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'origen_compra',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Pais',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'pais',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Parametro',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_empresa', models.CharField(blank=True, max_length=150, null=True)),
                ('numero_documento', models.IntegerField(blank=True, null=True)),
                ('direccion', models.CharField(blank=True, max_length=500, null=True)),
                ('telefono', models.CharField(blank=True, max_length=15, null=True)),
                ('mensaje_factura', models.CharField(blank=True, max_length=200, null=True)),
                ('mensaje_pedido', models.CharField(blank=True, max_length=200, null=True)),
                ('mensaje_cotizacion', models.CharField(blank=True, max_length=200, null=True)),
                ('mensaje_devolucion', models.CharField(blank=True, max_length=200, null=True)),
                ('mensaje_documentos', models.CharField(blank=True, max_length=200, null=True)),
                ('maximo_descuento', models.FloatField(blank=True, null=True)),
                ('imagen', models.CharField(blank=True, max_length=500, null=True)),
            ],
            options={
                'db_table': 'parametro',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(blank=True, max_length=20, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('costo_total', models.FloatField(blank=True, null=True)),
                ('precio_total', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'pedido',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PedidoDetalle',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('cantidad', models.IntegerField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('precio_descuento', models.FloatField(blank=True, null=True)),
                ('descuento', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'pedido_detalle',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PedidoImpuesto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'pedido_impuesto',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PedidoStatus',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=50)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'pedido_status',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProductoHistoricoSucursal',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('inventario_ant', models.IntegerField(blank=True, null=True)),
                ('inventario_nuevo', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'producto_historico_sucursal',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Productos',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('sku', models.CharField(max_length=12, unique=True)),
                ('imagen', models.CharField(blank=True, max_length=250, null=True)),
                ('cod_prod', models.CharField(max_length=5)),
                ('cod_prod_proveedor', models.CharField(blank=True, max_length=300, null=True)),
                ('codigo_barra', models.CharField(blank=True, max_length=95, null=True)),
                ('nombre', models.TextField()),
                ('nombre_odoo', models.TextField()),
                ('descripcion', models.TextField()),
                ('fecha_venta', models.IntegerField(blank=True, null=True)),
                ('costo_unitario', models.FloatField(blank=True, null=True)),
                ('costo_envio', models.FloatField(blank=True, null=True)),
                ('costo', models.FloatField(blank=True, null=True)),
                ('precio_sin_iva', models.FloatField(blank=True, null=True)),
                ('precio_mayor', models.FloatField(blank=True, null=True)),
                ('iva', models.FloatField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('presentacion_venta_id', models.IntegerField(blank=True, null=True)),
                ('outlet', models.IntegerField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('mayor', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'productos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProductoSucursal',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('inventario', models.IntegerField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'producto_sucursal',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Profesion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'profesion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('tipo_proveedor', models.IntegerField(blank=True, null=True)),
                ('rif', models.CharField(max_length=25)),
                ('nombre', models.CharField(blank=True, max_length=95, null=True)),
                ('razon_social', models.CharField(blank=True, max_length=90, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'proveedor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SaldoAfavor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('monto', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'saldo_afavor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Servicios',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('sku', models.CharField(max_length=12, unique=True)),
                ('cod_serv', models.CharField(max_length=5)),
                ('nombre', models.TextField()),
                ('descripcion', models.TextField(blank=True, null=True)),
                ('costo', models.FloatField(blank=True, null=True)),
                ('precio', models.FloatField(blank=True, null=True)),
                ('precio_iva', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'servicios',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SubCategoria',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=150)),
                ('slug', models.CharField(max_length=95)),
                ('codigo', models.CharField(max_length=5)),
                ('modulo', models.CharField(max_length=4)),
                ('status', models.IntegerField()),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'sub_categoria',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Sucursal',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.TextField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'sucursal',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TasaDia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField()),
                ('monto_bs', models.FloatField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'tasa_dia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TipoCliente',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(blank=True, max_length=15, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'tipo_cliente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TipoDocumento',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=1)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'tipo_documento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TipoImpuesto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('porcentaje', models.FloatField()),
                ('status', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'tipo_impuesto',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TipoRedSocial',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(blank=True, max_length=50, null=True, unique=True)),
            ],
            options={
                'db_table': 'tipo_red_social',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TipoTelefono',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'tipo_telefono',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='UnidadNegocio',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('descripcion', models.CharField(max_length=95)),
                ('slug', models.CharField(blank=True, max_length=150, null=True)),
                ('codigo', models.CharField(max_length=5)),
                ('status', models.IntegerField()),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'unidad_negocio',
                'managed': False,
            },
        ),
    ]
