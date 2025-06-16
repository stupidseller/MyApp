.class public Lcom/lee/myapplication/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"


# instance fields
.field private day:I

.field private description:Ljava/lang/String;

.field private id:J

.field private isLunar:Z

.field private isRestDay:Z

.field private month:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZLjava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLunar"    # Z
    .param p5, "isRestDay"    # Z
    .param p6, "description"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lee/myapplication/Holiday;->name:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/lee/myapplication/Holiday;->month:I

    .line 17
    iput p3, p0, Lcom/lee/myapplication/Holiday;->day:I

    .line 18
    iput-boolean p4, p0, Lcom/lee/myapplication/Holiday;->isLunar:Z

    .line 19
    iput-boolean p5, p0, Lcom/lee/myapplication/Holiday;->isRestDay:Z

    .line 20
    iput-object p6, p0, Lcom/lee/myapplication/Holiday;->description:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getDay()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/lee/myapplication/Holiday;->day:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/lee/myapplication/Holiday;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/lee/myapplication/Holiday;->id:J

    return-wide v0
.end method

.method public getMonth()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/lee/myapplication/Holiday;->month:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/lee/myapplication/Holiday;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isLunar()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/lee/myapplication/Holiday;->isLunar:Z

    return v0
.end method

.method public isRestDay()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/lee/myapplication/Holiday;->isRestDay:Z

    return v0
.end method

.method public setDay(I)V
    .registers 2
    .param p1, "day"    # I

    .line 34
    iput p1, p0, Lcom/lee/myapplication/Holiday;->day:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/lee/myapplication/Holiday;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 25
    iput-wide p1, p0, Lcom/lee/myapplication/Holiday;->id:J

    return-void
.end method

.method public setLunar(Z)V
    .registers 2
    .param p1, "lunar"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/lee/myapplication/Holiday;->isLunar:Z

    return-void
.end method

.method public setMonth(I)V
    .registers 2
    .param p1, "month"    # I

    .line 31
    iput p1, p0, Lcom/lee/myapplication/Holiday;->month:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/lee/myapplication/Holiday;->name:Ljava/lang/String;

    return-void
.end method

.method public setRestDay(Z)V
    .registers 2
    .param p1, "restDay"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/lee/myapplication/Holiday;->isRestDay:Z

    return-void
.end method
