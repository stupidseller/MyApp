.class public final Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;,
        Landroidx/profileinstaller/ProfileVerifier$Cache;,
        Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
    }
.end annotation


# static fields
.field private static final CUR_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0/"

.field private static final PROFILE_FILE_NAME:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_INSTALLED_CACHE_FILE_NAME:Ljava/lang/String; = "profileInstalled"

.field private static final REF_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/ref/"

.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ProfileVerifier"

.field private static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field private static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getCompilationStatusAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-object v0
.end method

.method private static getPackageLastUpdateTime(Landroid/content/Context;)J
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_15

    .line 301
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1

    .line 303
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1
.end method

.method private static setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 5
    .param p0, "resultCode"    # I
    .param p1, "hasReferenceProfile"    # Z
    .param p2, "hasCurrentProfile"    # Z

    .line 285
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-direct {v0, p0, p1, p2}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>(IZZ)V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 290
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0
.end method

.method public static writeProfileVerification(Landroid/content/Context;)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    return-object v0
.end method

.method static writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceVerifyCurrentProfile"    # Z

    .line 129
    if-nez p1, :cond_9

    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_9

    .line 130
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0

    .line 133
    :cond_9
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    if-nez p1, :cond_16

    :try_start_e
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_16

    .line 136
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    monitor-exit v1

    return-object v0

    .line 140
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_25

    goto/16 :goto_10e

    .line 152
    :cond_25
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/profiles/ref/"

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "primary.prof"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 154
    .local v2, "referenceProfileFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 155
    .local v4, "referenceProfileSize":J
    nop

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_4b

    cmp-long v0, v4, v6

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    move v0, v3

    :goto_4c
    move v9, v0

    .line 159
    .local v9, "hasReferenceProfile":Z
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/profiles/cur/0/"

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "primary.prof"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 161
    .local v10, "currentProfileFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 162
    .local v11, "currentProfileSize":J
    nop

    .line 163
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_116

    if-eqz v0, :cond_70

    cmp-long v0, v11, v6

    if-lez v0, :cond_70

    const/4 v3, 0x1

    .line 169
    .local v3, "hasCurrentProfile":Z
    :cond_70
    :try_start_70
    invoke-static/range {p0 .. p0}, Landroidx/profileinstaller/ProfileVerifier;->getPackageLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v6
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_74} :catch_100
    .catchall {:try_start_70 .. :try_end_74} :catchall_116

    .line 176
    .local v6, "packageLastUpdateTime":J
    nop

    .line 179
    :try_start_75
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "profileInstalled"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 180
    .local v15, "cacheFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 181
    .local v13, "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_86
    .catchall {:try_start_75 .. :try_end_86} :catchall_116

    if-eqz v0, :cond_9a

    .line 183
    :try_start_88
    invoke-static {v15}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    move-result-object v0
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_8f
    .catchall {:try_start_88 .. :try_end_8c} :catchall_116

    move-object v13, v0

    .line 190
    move-object v14, v13

    goto :goto_9b

    .line 184
    :catch_8f
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const/high16 v8, 0x20000

    :try_start_94
    invoke-static {v8, v9, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v8

    monitor-exit v1

    return-object v8

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9a
    move-object v14, v13

    .line 205
    .end local v13    # "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .local v14, "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    :goto_9b
    const/4 v0, 0x2

    if-eqz v14, :cond_ae

    move/from16 v20, v9

    .end local v9    # "hasReferenceProfile":Z
    .local v20, "hasReferenceProfile":Z
    iget-wide v8, v14, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_b0

    iget v8, v14, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v8, v0, :cond_ab

    goto :goto_b0

    .line 223
    :cond_ab
    iget v8, v14, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .local v8, "resultCode":I
    goto :goto_b9

    .line 205
    .end local v8    # "resultCode":I
    .end local v20    # "hasReferenceProfile":Z
    .restart local v9    # "hasReferenceProfile":Z
    :cond_ae
    move/from16 v20, v9

    .line 212
    .end local v9    # "hasReferenceProfile":Z
    .restart local v20    # "hasReferenceProfile":Z
    :cond_b0
    :goto_b0
    if-eqz v20, :cond_b4

    .line 213
    const/4 v8, 0x1

    .restart local v8    # "resultCode":I
    goto :goto_b9

    .line 214
    .end local v8    # "resultCode":I
    :cond_b4
    if-eqz v3, :cond_b8

    .line 215
    const/4 v8, 0x2

    .restart local v8    # "resultCode":I
    goto :goto_b9

    .line 217
    .end local v8    # "resultCode":I
    :cond_b8
    const/4 v8, 0x0

    .line 230
    .restart local v8    # "resultCode":I
    :goto_b9
    if-eqz p1, :cond_c1

    if-eqz v3, :cond_c1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c1

    .line 232
    const/4 v8, 0x2

    .line 237
    :cond_c1
    if-eqz v14, :cond_d3

    iget v9, v14, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v9, v0, :cond_d3

    const/4 v0, 0x1

    if-ne v8, v0, :cond_d3

    .line 251
    move v0, v8

    .end local v8    # "resultCode":I
    .local v0, "resultCode":I
    iget-wide v8, v14, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_d4

    .line 252
    const/4 v8, 0x3

    .end local v0    # "resultCode":I
    .restart local v8    # "resultCode":I
    goto :goto_d5

    .line 237
    :cond_d3
    move v0, v8

    .line 257
    .end local v8    # "resultCode":I
    .restart local v0    # "resultCode":I
    :cond_d4
    move v8, v0

    .end local v0    # "resultCode":I
    .restart local v8    # "resultCode":I
    :goto_d5
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$Cache;

    const/4 v9, 0x1

    move-object v13, v0

    move-object/from16 v21, v2

    move-object v2, v14

    .end local v14    # "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .local v2, "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .local v21, "referenceProfileFile":Ljava/io/File;
    move v14, v9

    move-object v9, v15

    .end local v15    # "cacheFile":Ljava/io/File;
    .local v9, "cacheFile":Ljava/io/File;
    move v15, v8

    move-wide/from16 v16, v6

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    move-object v13, v0

    .line 266
    .local v13, "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    if-eqz v2, :cond_ef

    invoke-virtual {v2, v13}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ed
    .catchall {:try_start_94 .. :try_end_ed} :catchall_116

    if-nez v0, :cond_f8

    .line 268
    :cond_ef
    :try_start_ef
    invoke-virtual {v13, v9}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3
    .catchall {:try_start_ef .. :try_end_f2} :catchall_116

    .line 272
    goto :goto_f8

    .line 269
    :catch_f3
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 270
    .local v0, "e":Ljava/io/IOException;
    const/high16 v8, 0x30000

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f8
    :goto_f8
    move/from16 v14, v20

    .end local v20    # "hasReferenceProfile":Z
    .local v14, "hasReferenceProfile":Z
    :try_start_fa
    invoke-static {v8, v14, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 170
    .end local v6    # "packageLastUpdateTime":J
    .end local v8    # "resultCode":I
    .end local v13    # "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .end local v14    # "hasReferenceProfile":Z
    .end local v21    # "referenceProfileFile":Ljava/io/File;
    .local v2, "referenceProfileFile":Ljava/io/File;
    .local v9, "hasReferenceProfile":Z
    :catch_100
    move-exception v0

    move-object/from16 v21, v2

    move v14, v9

    move-object v2, v0

    .end local v2    # "referenceProfileFile":Ljava/io/File;
    .end local v9    # "hasReferenceProfile":Z
    .restart local v14    # "hasReferenceProfile":Z
    .restart local v21    # "referenceProfileFile":Ljava/io/File;
    move-object v0, v2

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v2, 0x10000

    invoke-static {v2, v14, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 142
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "hasCurrentProfile":Z
    .end local v4    # "referenceProfileSize":J
    .end local v10    # "currentProfileFile":Ljava/io/File;
    .end local v11    # "currentProfileSize":J
    .end local v14    # "hasReferenceProfile":Z
    .end local v21    # "referenceProfileFile":Ljava/io/File;
    :cond_10e
    :goto_10e
    const/high16 v0, 0x40000

    invoke-static {v0, v3, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_116
    move-exception v0

    monitor-exit v1
    :try_end_118
    .catchall {:try_start_fa .. :try_end_118} :catchall_116

    throw v0
.end method
