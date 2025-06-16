.class public final synthetic Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/weather/WeatherService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/weather/WeatherService;Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$0:Lcom/lee/myapplication/weather/WeatherService;

    iput-object p2, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$2:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$0:Lcom/lee/myapplication/weather/WeatherService;

    iget-object v1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda0;->f$2:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    invoke-virtual {v0, v1, v2}, Lcom/lee/myapplication/weather/WeatherService;->lambda$getWeather$2$com-lee-myapplication-weather-WeatherService(Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V

    return-void
.end method
