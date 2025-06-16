.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;,
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String; = "androidx.core.view.extra.INPUT_CONTENT_INFO"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "InputConnectionCompat"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_12

    .line 152
    nop

    .line 153
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    .line 152
    invoke-static {p0, v0, p3, p4}, Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;->commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 155
    :cond_12
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 157
    .local v0, "protocol":I
    packed-switch v0, :pswitch_data_6e

    .line 167
    const/4 v1, 0x0

    return v1

    .line 160
    :pswitch_1b
    const/4 v1, 0x0

    .line 161
    .local v1, "interop":Z
    goto :goto_1f

    .line 163
    .end local v1    # "interop":Z
    :pswitch_1d
    const/4 v1, 0x1

    .line 164
    .restart local v1    # "interop":Z
    nop

    .line 170
    :goto_1f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v2, "params":Landroid/os/Bundle;
    if-eqz v1, :cond_29

    .line 172
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2b

    .line 173
    :cond_29
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 174
    :goto_2b
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 171
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    if-eqz v1, :cond_37

    .line 176
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_39

    .line 177
    :cond_37
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 178
    :goto_39
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    if-eqz v1, :cond_45

    .line 180
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_47

    .line 181
    :cond_45
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 182
    :goto_47
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    if-eqz v1, :cond_53

    .line 184
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_55

    .line 185
    :cond_53
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 183
    :goto_55
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    if-eqz v1, :cond_5d

    .line 188
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_5f

    .line 189
    :cond_5d
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 187
    :goto_5f
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    if-eqz v1, :cond_67

    .line 193
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_69

    .line 194
    :cond_67
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 192
    :goto_69
    invoke-interface {p0, v3, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    return v3

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method private static createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 360
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createWrapper(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 347
    nop

    .line 348
    invoke-static {p0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-result-object v0

    .line 349
    .local v0, "onCommitContentListener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    invoke-static {p1, p2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    const-string v0, "inputConnection must be non-null"

    invoke-static {p0, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v0, "editorInfo must be non-null"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "onCommitContentListener must be non-null"

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    .line 278
    move-object v0, p2

    .line 279
    .local v0, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v1, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v1, p0, v2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v1

    .line 292
    .end local v0    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_1d
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_25

    .line 294
    return-object p0

    .line 296
    :cond_25
    move-object v1, p2

    .line 297
    .local v1, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v3, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v3, p0, v2, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v3
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 15
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 92
    return v0

    .line 96
    :cond_4
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 97
    const/4 v1, 0x0

    .local v1, "interop":Z
    goto :goto_17

    .line 98
    .end local v1    # "interop":Z
    :cond_e
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 99
    const/4 v1, 0x1

    .line 103
    .restart local v1    # "interop":Z
    :goto_17
    const/4 v2, 0x0

    .line 104
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x0

    .line 106
    .local v3, "result":Z
    const/4 v4, 0x0

    if-eqz v1, :cond_1f

    .line 107
    :try_start_1c
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_21

    .line 108
    :cond_1f
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 106
    :goto_21
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    move-object v2, v5

    .line 109
    if-eqz v1, :cond_2d

    .line 110
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2f

    .line 111
    :cond_2d
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 109
    :goto_2f
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 112
    .local v5, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_3a

    .line 113
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_3c

    .line 114
    :cond_3a
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 112
    :goto_3c
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ClipDescription;

    .line 115
    .local v6, "description":Landroid/content/ClipDescription;
    if-eqz v1, :cond_47

    .line 116
    const-string v7, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_49

    .line 117
    :cond_47
    const-string v7, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 115
    :goto_49
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 118
    .local v7, "linkUri":Landroid/net/Uri;
    if-eqz v1, :cond_54

    .line 119
    const-string v8, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_56

    .line 120
    :cond_54
    const-string v8, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 118
    :goto_56
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 121
    .local v8, "flags":I
    if-eqz v1, :cond_5f

    .line 122
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_61

    .line 123
    :cond_5f
    const-string v9, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 121
    :goto_61
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 124
    .local v9, "opts":Landroid/os/Bundle;
    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    .line 125
    new-instance v10, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v10, v5, v6, v7}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 127
    .local v10, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v10, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v11
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_7e

    move v3, v11

    .line 130
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "description":Landroid/content/ClipDescription;
    .end local v7    # "linkUri":Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "opts":Landroid/os/Bundle;
    .end local v10    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :cond_75
    if-eqz v2, :cond_7d

    .line 131
    if-eqz v3, :cond_7a

    const/4 v0, 0x1

    :cond_7a
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 134
    :cond_7d
    return v3

    .line 130
    :catchall_7e
    move-exception v0

    if-eqz v2, :cond_84

    .line 131
    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 133
    :cond_84
    throw v0

    .line 101
    .end local v1    # "interop":Z
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v3    # "result":Z
    :cond_85
    return v0
.end method

.method static synthetic lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 362
    move-object v0, p3

    .line 363
    .local v0, "extras":Landroid/os/Bundle;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-lt v1, v2, :cond_32

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_32

    .line 366
    :try_start_c
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_29

    .line 371
    nop

    .line 377
    nop

    .line 378
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputContentInfo;

    .line 379
    .local v1, "inputContentInfoFmk":Landroid/view/inputmethod/InputContentInfo;
    new-instance v2, Landroid/os/Bundle;

    if-nez p3, :cond_1f

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_22

    :cond_1f
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_22
    move-object v0, v2

    .line 380
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_32

    .line 367
    .end local v1    # "inputContentInfoFmk":Landroid/view/inputmethod/InputContentInfo;
    :catch_29
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputConnectionCompat"

    const-string v4, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    return v3

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    .line 383
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 384
    .local v1, "clip":Landroid/content/ClipData;
    new-instance v2, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v4}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 385
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 386
    invoke-virtual {v2, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    .line 388
    .local v2, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v4

    if-nez v4, :cond_61

    const/4 v3, 0x1

    :cond_61
    return v3
.end method
