.class Lcom/lee/myapplication/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lee/myapplication/MainActivity;->updateWeatherAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lee/myapplication/MainActivity;


# direct methods
.method constructor <init>(Lcom/lee/myapplication/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lee/myapplication/MainActivity;

    .line 119
    iput-object p1, p0, Lcom/lee/myapplication/MainActivity$1;->this$0:Lcom/lee/myapplication/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Ljava/lang/String;)V
    .registers 3
    .param p0, "error"    # Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5929\u6c14\u4fe1\u606f\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method synthetic lambda$onWeatherReceived$0$com-lee-myapplication-MainActivity$1(Lcom/lee/myapplication/weather/Weather;)V
    .registers 3
    .param p1, "weather"    # Lcom/lee/myapplication/weather/Weather;

    .line 123
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity$1;->this$0:Lcom/lee/myapplication/MainActivity;

    invoke-static {v0, p1}, Lcom/lee/myapplication/MainActivity;->access$000(Lcom/lee/myapplication/MainActivity;Lcom/lee/myapplication/weather/Weather;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity$1;->this$0:Lcom/lee/myapplication/MainActivity;

    new-instance v1, Lcom/lee/myapplication/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/lee/myapplication/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public onWeatherReceived(Lcom/lee/myapplication/weather/Weather;)V
    .registers 4
    .param p1, "weather"    # Lcom/lee/myapplication/weather/Weather;

    .line 123
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity$1;->this$0:Lcom/lee/myapplication/MainActivity;

    new-instance v1, Lcom/lee/myapplication/MainActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/lee/myapplication/MainActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/lee/myapplication/MainActivity$1;Lcom/lee/myapplication/weather/Weather;)V

    invoke-virtual {v0, v1}, Lcom/lee/myapplication/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
