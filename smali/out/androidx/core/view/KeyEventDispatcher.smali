.class public Landroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/KeyEventDispatcher$Component;
    }
.end annotation


# static fields
.field private static sActionBarFieldsFetched:Z

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

.field private static sDialogFieldsFetched:Z

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 48
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    .line 49
    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 50
    sput-object v1, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .registers 8
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 98
    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 100
    nop

    .line 101
    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onMenuKeyEvent"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_19} :catch_1a

    .line 103
    goto :goto_1b

    .line 102
    :catch_1a
    move-exception v2

    .line 104
    :goto_1b
    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 106
    :cond_1d
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3a

    .line 108
    :try_start_21
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_2e

    .line 110
    return v1

    .line 112
    :cond_2e
    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_35} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_35} :catch_36

    return v1

    .line 114
    .end local v0    # "value":Ljava/lang/Object;
    :catch_36
    move-exception v0

    goto :goto_3a

    .line 113
    :catch_38
    move-exception v0

    .line 115
    nop

    .line 117
    :cond_3a
    :goto_3a
    return v1
.end method

.method private static activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    .local v0, "win":Landroid/view/Window;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 129
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 130
    .local v3, "keyCode":I
    const/16 v4, 0x52

    if-ne v3, v4, :cond_25

    if-eqz v1, :cond_25

    .line 131
    invoke-static {v1, p1}, Landroidx/core/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 132
    return v2

    .line 136
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    .end local v3    # "keyCode":I
    :cond_25
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 137
    return v2

    .line 139
    :cond_2c
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "decor":Landroid/view/View;
    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 141
    return v2

    .line 143
    :cond_37
    if-eqz v1, :cond_3e

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    .line 143
    :goto_3f
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 168
    invoke-static {p0}, Landroidx/core/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    .line 169
    .local v0, "onKeyListener":Landroid/content/DialogInterface$OnKeyListener;
    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 170
    return v1

    .line 172
    :cond_12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 173
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 174
    return v1

    .line 176
    :cond_1d
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 177
    .local v3, "decor":Landroid/view/View;
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 178
    return v1

    .line 180
    :cond_28
    if-eqz v3, :cond_2f

    .line 181
    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 180
    :goto_30
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 64
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p0, "component"    # Landroidx/core/view/KeyEventDispatcher$Component;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/Window$Callback;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 83
    return v0

    .line 85
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    .line 86
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 88
    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_1b

    .line 89
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p3}, Landroidx/core/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 90
    :cond_1b
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_27

    .line 91
    move-object v0, p2

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0, p3}, Landroidx/core/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 93
    :cond_27
    if-eqz p1, :cond_2f

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 94
    :cond_2f
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    const/4 v0, 0x1

    .line 93
    :cond_36
    return v0
.end method

.method private static getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 4
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 149
    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    if-nez v0, :cond_18

    .line 151
    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/app/Dialog;

    const-string v2, "mOnKeyListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 152
    sget-object v1, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    .line 154
    goto :goto_16

    .line 153
    :catch_15
    move-exception v1

    .line 155
    :goto_16
    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 158
    :cond_18
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_26

    .line 160
    :try_start_1c
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v0

    .line 161
    :catch_25
    move-exception v0

    .line 164
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method
