.class public Lcom/google/android/material/internal/ManufacturerUtils;
.super Ljava/lang/Object;
.source "ManufacturerUtils.java"


# static fields
.field private static final LGE:Ljava/lang/String; = "lge"

.field private static final MEIZU:Ljava/lang/String; = "meizu"

.field private static final SAMSUNG:Ljava/lang/String; = "samsung"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 2

    .line 57
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 58
    .local v0, "manufacturer":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 59
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_b
    const-string v1, ""

    return-object v1
.end method

.method public static isDateInputKeyboardMissingSeparatorCharacters()Z
    .registers 1

    .line 52
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isLGEDevice()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isLGEDevice()Z
    .registers 2

    .line 40
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMeizuDevice()Z
    .registers 2

    .line 35
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSamsungDevice()Z
    .registers 2

    .line 45
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
