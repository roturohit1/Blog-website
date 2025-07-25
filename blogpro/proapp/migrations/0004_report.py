# Generated by Django 4.2.3 on 2023-08-10 05:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('proapp', '0003_form_alter_uploaddata_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=50)),
                ('message', models.CharField(max_length=200)),
                ('blogid', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'Report',
            },
        ),
    ]
