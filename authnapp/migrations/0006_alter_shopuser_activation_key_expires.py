# Generated by Django 3.2.10 on 2022-02-11 21:02

import datetime

from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ("authnapp", "0005_create_profiles"),
    ]

    operations = [
        migrations.AlterField(
            model_name="shopuser",
            name="activation_key_expires",
            field=models.DateTimeField(
                default=datetime.datetime(2022, 2, 13, 21, 2, 16, 245828, tzinfo=utc), verbose_name="актуальность ключа"
            ),
        ),
    ]
