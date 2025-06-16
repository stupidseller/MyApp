.class public Lcom/qweather/sdk/response/warning/WarningLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/warning/WarningLocation;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public setLocationId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/warning/WarningLocation;->locationId:Ljava/lang/String;

    return-void
.end method
