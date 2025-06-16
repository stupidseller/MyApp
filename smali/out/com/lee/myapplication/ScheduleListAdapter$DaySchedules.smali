.class public Lcom/lee/myapplication/ScheduleListAdapter$DaySchedules;
.super Ljava/lang/Object;
.source "ScheduleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lee/myapplication/ScheduleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySchedules"
.end annotation


# instance fields
.field date:Ljava/util/Calendar;

.field schedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lee/myapplication/Schedule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
