.class public Lcom/qweather/sdk/response/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/Response;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/Response;->code:Ljava/lang/String;

    return-void
.end method
