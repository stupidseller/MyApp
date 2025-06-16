.class public Lcom/lee/myapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x3e9


# instance fields
.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private temperatureText:Landroid/widget/TextView;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private weatherIcon:Landroid/widget/ImageView;

.field private weatherService:Lcom/lee/myapplication/weather/WeatherService;

.field private weatherText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1wzGZ7uL7MivWnpkvZ6oDHy5_lk(Lcom/lee/myapplication/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->checkCachedWeatherAndUpdate()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lee/myapplication/MainActivity;Lcom/lee/myapplication/weather/Weather;)V
    .registers 2
    .param p0, "x0"    # Lcom/lee/myapplication/MainActivity;
    .param p1, "x1"    # Lcom/lee/myapplication/weather/Weather;

    .line 27
    invoke-direct {p0, p1}, Lcom/lee/myapplication/MainActivity;->displayWeather(Lcom/lee/myapplication/weather/Weather;)V

    return-void
.end method

.method private checkCachedWeatherAndUpdate()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    invoke-virtual {v0}, Lcom/lee/myapplication/weather/WeatherService;->getCachedWeather()Lcom/lee/myapplication/weather/Weather;

    move-result-object v0

    .line 104
    .local v0, "cachedWeather":Lcom/lee/myapplication/weather/Weather;
    if-eqz v0, :cond_b

    .line 105
    invoke-direct {p0, v0}, Lcom/lee/myapplication/MainActivity;->displayWeather(Lcom/lee/myapplication/weather/Weather;)V

    .line 109
    :cond_b
    iget-object v1, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    invoke-virtual {v1}, Lcom/lee/myapplication/weather/WeatherService;->shouldUpdateWeather()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 111
    iget-object v1, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    invoke-virtual {v1}, Lcom/lee/myapplication/weather/WeatherService;->getLastLocation()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "location":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lee/myapplication/MainActivity;->updateWeatherAsync(Ljava/lang/String;)V

    .line 114
    .end local v1    # "location":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private checkLocationPermission()V
    .registers 4

    .line 158
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 160
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x3e9

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1d

    .line 164
    :cond_14
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    invoke-virtual {v0}, Lcom/lee/myapplication/weather/WeatherService;->getLastLocation()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "location":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lee/myapplication/MainActivity;->updateWeatherAsync(Ljava/lang/String;)V

    .line 167
    .end local v0    # "location":Ljava/lang/String;
    :goto_1d
    return-void
.end method

.method private displayWeather(Lcom/lee/myapplication/weather/Weather;)V
    .registers 8
    .param p1, "weather"    # Lcom/lee/myapplication/weather/Weather;

    .line 140
    if-nez p1, :cond_3

    return-void

    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWeatherIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lee/myapplication/weather/WeatherIconUtil;->getWeatherIconResource(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "iconResource":I
    iget-object v1, p0, Lcom/lee/myapplication/MainActivity;->weatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWeatherDesc()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getHumidity()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWindSpeed()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getWindDir()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 147
    const-string v2, "%s %s\n\u6e7f\u5ea6: %s \u98ce\u901f: %s \u98ce\u5411: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "weatherInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/lee/myapplication/MainActivity;->weatherText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/lee/myapplication/MainActivity;->temperatureText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lee/myapplication/weather/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method private getCityCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cityName"    # Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_92

    :cond_7
    goto/16 :goto_6f

    :sswitch_9
    const-string v0, "\u91cd\u5e86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_70

    :sswitch_14
    const-string v0, "\u897f\u5b89"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_70

    :sswitch_1f
    const-string v0, "\u6df1\u5733"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_70

    :sswitch_29
    const-string v0, "\u6b66\u6c49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_70

    :sswitch_33
    const-string v0, "\u676d\u5dde"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_70

    :sswitch_3d
    const-string v0, "\u6210\u90fd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_70

    :sswitch_47
    const-string v0, "\u5e7f\u5dde"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_70

    :sswitch_51
    const-string v0, "\u5357\u4eac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_70

    :sswitch_5b
    const-string v0, "\u5317\u4eac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_70

    :sswitch_65
    const-string v0, "\u4e0a\u6d77"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_70

    :goto_6f
    const/4 v0, -0x1

    :goto_70
    const-string v1, "101010100"

    packed-switch v0, :pswitch_data_bc

    .line 270
    return-object v1

    .line 269
    :pswitch_76
    const-string v0, "101110101"

    return-object v0

    .line 268
    :pswitch_79
    const-string v0, "101040100"

    return-object v0

    .line 267
    :pswitch_7c
    const-string v0, "101270101"

    return-object v0

    .line 266
    :pswitch_7f
    const-string v0, "101200101"

    return-object v0

    .line 265
    :pswitch_82
    const-string v0, "101190101"

    return-object v0

    .line 264
    :pswitch_85
    const-string v0, "101210101"

    return-object v0

    .line 263
    :pswitch_88
    const-string v0, "101280601"

    return-object v0

    .line 262
    :pswitch_8b
    const-string v0, "101280101"

    return-object v0

    .line 261
    :pswitch_8e
    const-string v0, "101020100"

    return-object v0

    .line 260
    :pswitch_91
    return-object v1

    :sswitch_data_92
    .sparse-switch
        0x9e0ad -> :sswitch_65
        0xa5e75 -> :sswitch_5b
        0xa6635 -> :sswitch_51
        0xbcf3f -> :sswitch_47
        0xc70ed -> :sswitch_3d
        0xce411 -> :sswitch_33
        0xd6da3 -> :sswitch_29
        0xda762 -> :sswitch_1f
        0x1101ea -> :sswitch_14
        0x120659 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method private initViews()V
    .registers 3

    .line 59
    sget v0, Lcom/lee/myapplication/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    sget v0, Lcom/lee/myapplication/R$id;->tabLayout:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 61
    sget v0, Lcom/lee/myapplication/R$id;->weatherIcon:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherIcon:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/lee/myapplication/R$id;->weatherText:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherText:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/lee/myapplication/R$id;->temperatureText:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->temperatureText:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/lee/myapplication/R$id;->weatherContainer:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "weatherContainer":Landroid/view/View;
    new-instance v1, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/lee/myapplication/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method static synthetic lambda$setupViewPager$2(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 3
    .param p0, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p1, "position"    # I

    .line 79
    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 90
    :pswitch_4
    const-string v0, "\u65e5\u7a0b"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_1c

    .line 87
    :pswitch_a
    const-string v0, "\u65e5\u89c6\u56fe"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 88
    goto :goto_1c

    .line 84
    :pswitch_10
    const-string v0, "\u5468\u89c6\u56fe"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 85
    goto :goto_1c

    .line 81
    :pswitch_16
    const-string v0, "\u6708\u89c6\u56fe"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 82
    nop

    .line 93
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method private searchWeatherByCity(Ljava/lang/String;)V
    .registers 8
    .param p1, "location"    # Ljava/lang/String;

    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "isCode":Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-char v4, v1, v3

    .line 241
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_13

    .line 242
    const/4 v0, 0x0

    .line 243
    goto :goto_16

    .line 240
    .end local v4    # "c":C
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 248
    :cond_16
    :goto_16
    if-eqz v0, :cond_1a

    move-object v1, p1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0, p1}, Lcom/lee/myapplication/MainActivity;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "cityLocation":Ljava/lang/String;
    :goto_1e
    invoke-direct {p0, v1}, Lcom/lee/myapplication/MainActivity;->updateWeatherAsync(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private setupViewPager()V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 74
    new-instance v0, Lcom/lee/myapplication/CalendarPagerAdapter;

    invoke-direct {v0, p0}, Lcom/lee/myapplication/CalendarPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 75
    .local v0, "pagerAdapter":Lcom/lee/myapplication/CalendarPagerAdapter;
    iget-object v1, p0, Lcom/lee/myapplication/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v2, p0, Lcom/lee/myapplication/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/lee/myapplication/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v4, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 94
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 95
    return-void
.end method

.method private setupWeatherService()V
    .registers 2

    .line 98
    new-instance v0, Lcom/lee/myapplication/weather/WeatherService;

    invoke-direct {v0, p0}, Lcom/lee/myapplication/weather/WeatherService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    .line 99
    return-void
.end method

.method private showCityInputDialog()V
    .registers 14

    .line 188
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u5317\u4eac"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u4e0a\u6d77"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u5e7f\u5dde"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "\u6df1\u5733"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "\u676d\u5dde"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "\u5357\u4eac"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "\u6b66\u6c49"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "\u6210\u90fd"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "\u91cd\u5e86"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "\u897f\u5b89"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 192
    .local v1, "commonCities":[Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "101010100"

    aput-object v2, v0, v3

    const-string v2, "101020100"

    aput-object v2, v0, v4

    const-string v2, "101280101"

    aput-object v2, v0, v5

    const-string v2, "101280601"

    aput-object v2, v0, v6

    const-string v2, "101210101"

    aput-object v2, v0, v7

    const-string v2, "101190101"

    aput-object v2, v0, v8

    const-string v2, "101200101"

    aput-object v2, v0, v9

    const-string v2, "101270101"

    aput-object v2, v0, v10

    const-string v2, "101040100"

    aput-object v2, v0, v11

    const-string v2, "101110101"

    aput-object v2, v0, v12

    .line 198
    .local v0, "cityCodes":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lee/myapplication/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/lee/myapplication/R$layout;->dialog_city_select:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "dialogView":Landroid/view/View;
    sget v3, Lcom/lee/myapplication/R$id;->cityInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 200
    .local v3, "cityInput":Landroid/widget/EditText;
    sget v5, Lcom/lee/myapplication/R$id;->cityList:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 203
    .local v5, "cityList":Landroid/widget/ListView;
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 205
    .local v6, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    const-string v8, "\u9009\u62e9\u6216\u8f93\u5165\u57ce\u5e02"

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    .line 210
    invoke-virtual {v7, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v3}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/lee/myapplication/MainActivity;Landroid/widget/EditText;)V

    .line 211
    const-string v9, "\u786e\u5b9a"

    invoke-virtual {v7, v9, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    .line 218
    const-string v8, "\u53d6\u6d88"

    invoke-virtual {v7, v8, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    .local v4, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    .line 221
    .local v7, "dialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 224
    new-instance v8, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v0, v7}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/lee/myapplication/MainActivity;[Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    return-void
.end method

.method private updateWeatherAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "location"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/lee/myapplication/MainActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method


# virtual methods
.method synthetic lambda$initViews$1$com-lee-myapplication-MainActivity(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->showCityInputDialog()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-lee-myapplication-MainActivity()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->setupViewPager()V

    .line 46
    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->setupWeatherService()V

    .line 47
    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->checkLocationPermission()V

    .line 48
    return-void
.end method

.method synthetic lambda$showCityInputDialog$4$com-lee-myapplication-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "cityInput"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 212
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "cityName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 215
    invoke-direct {p0, v0}, Lcom/lee/myapplication/MainActivity;->searchWeatherByCity(Ljava/lang/String;)V

    .line 217
    :cond_15
    return-void
.end method

.method synthetic lambda$showCityInputDialog$5$com-lee-myapplication-MainActivity([Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "cityCodes"    # [Ljava/lang/String;
    .param p2, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "parent"    # Landroid/widget/AdapterView;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J

    .line 226
    aget-object v0, p1, p5

    invoke-direct {p0, v0}, Lcom/lee/myapplication/MainActivity;->searchWeatherByCity(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 228
    return-void
.end method

.method synthetic lambda$updateWeatherAsync$3$com-lee-myapplication-MainActivity(Ljava/lang/String;)V
    .registers 4
    .param p1, "location"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    new-instance v1, Lcom/lee/myapplication/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MainActivity$1;-><init>(Lcom/lee/myapplication/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/lee/myapplication/weather/WeatherService;->getWeather(Ljava/lang/String;Lcom/lee/myapplication/weather/WeatherService$WeatherCallback;)V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/lee/myapplication/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/lee/myapplication/MainActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/lee/myapplication/MainActivity;->initViews()V

    .line 44
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/lee/myapplication/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 173
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_22

    .line 174
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_19

    aget v0, p3, v1

    if-nez v0, :cond_19

    .line 175
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity;->weatherService:Lcom/lee/myapplication/weather/WeatherService;

    invoke-virtual {v0}, Lcom/lee/myapplication/weather/WeatherService;->getLastLocation()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "location":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lee/myapplication/MainActivity;->updateWeatherAsync(Ljava/lang/String;)V

    .line 177
    .end local v0    # "location":Ljava/lang/String;
    goto :goto_22

    .line 178
    :cond_19
    const-string v0, "\u9700\u8981\u4f4d\u7f6e\u6743\u9650\u6765\u83b7\u53d6\u5929\u6c14\u4fe1\u606f"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :cond_22
    :goto_22
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/lee/myapplication/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method
