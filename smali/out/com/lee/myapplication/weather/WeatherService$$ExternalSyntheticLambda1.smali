.class public final synthetic Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

.field public final synthetic f$1:Lcom/lee/myapplication/weather/Weather;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Lcom/lee/myapplication/weather/Weather;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;->f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    iput-object p2, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;->f$1:Lcom/lee/myapplication/weather/Weather;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;->f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    iget-object v1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda1;->f$1:Lcom/lee/myapplication/weather/Weather;

    invoke-static {v0, v1}, Lcom/lee/myapplication/weather/WeatherService;->lambda$getWeather$0(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Lcom/lee/myapplication/weather/Weather;)V

    return-void
.end method
