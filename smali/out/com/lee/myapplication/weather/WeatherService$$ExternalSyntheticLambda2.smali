.class public final synthetic Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;->f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    iput-object p2, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;->f$0:Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;

    iget-object v1, p0, Lcom/lee/myapplication/weather/WeatherService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/lee/myapplication/weather/WeatherService;->lambda$getWeather$1(Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;Ljava/lang/Exception;)V

    return-void
.end method
