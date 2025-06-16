.class public Lcom/qweather/sdk/response/error/ErrorDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private detail:Ljava/lang/String;

.field private invalidParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private referenceDoc:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->invalidParams:Ljava/util/List;

    return-object v0
.end method

.method public getReferenceDoc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->referenceDoc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->detail:Ljava/lang/String;

    return-void
.end method

.method public setInvalidParams(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->invalidParams:Ljava/util/List;

    return-void
.end method

.method public setReferenceDoc(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->referenceDoc:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/qweather/sdk/response/error/ErrorDetail;->type:Ljava/lang/String;

    return-void
.end method
