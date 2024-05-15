.class public Lsun/misc/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final java_profile_name:Ljava/lang/String; = ""

.field private static final java_runtime_name:Ljava/lang/String; = "Android Runtime"

.field private static final java_runtime_version:Ljava/lang/String; = "0.9"

.field private static final java_version:Ljava/lang/String; = "0"

.field private static jdk_build_number:I = 0x0

.field private static jdk_major_version:I = 0x0

.field private static jdk_micro_version:I = 0x0

.field private static jdk_minor_version:I = 0x0

.field private static jdk_special_version:Ljava/lang/String; = null

.field private static jdk_update_version:I = 0x0

.field private static jvmVersionInfoAvailable:Z = false

.field private static jvm_build_number:I = 0x0

.field private static jvm_major_version:I = 0x0

.field private static jvm_micro_version:I = 0x0

.field private static jvm_minor_version:I = 0x0

.field private static jvm_special_version:Ljava/lang/String; = null

.field private static jvm_update_version:I = 0x0

.field private static final launcher_name:Ljava/lang/String; = ""

.field private static versionsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    .line 47
    sput v0, Lsun/misc/Version;->jvm_major_version:I

    .line 48
    sput v0, Lsun/misc/Version;->jvm_minor_version:I

    .line 49
    sput v0, Lsun/misc/Version;->jvm_micro_version:I

    .line 50
    sput v0, Lsun/misc/Version;->jvm_update_version:I

    .line 51
    sput v0, Lsun/misc/Version;->jvm_build_number:I

    .line 52
    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 53
    sput v0, Lsun/misc/Version;->jdk_major_version:I

    .line 54
    sput v0, Lsun/misc/Version;->jdk_minor_version:I

    .line 55
    sput v0, Lsun/misc/Version;->jdk_micro_version:I

    .line 56
    sput v0, Lsun/misc/Version;->jdk_update_version:I

    .line 57
    sput v0, Lsun/misc/Version;->jdk_build_number:I

    .line 58
    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getJdkSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJdkVersionInfo()V
.end method

.method public static native getJvmSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJvmVersionInfo()Z
.end method

.method public static initSystemProperties()V
    .registers 2

    .prologue
    .line 41
    const-string/jumbo v0, "java.version"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "java.runtime.version"

    const-string/jumbo v1, "0.9"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "java.runtime.name"

    const-string/jumbo v1, "Android Runtime"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static declared-synchronized initVersions()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v7, 0x0

    const-class v8, Lsun/misc/Version;

    monitor-enter v8

    .line 265
    :try_start_5
    sget-boolean v9, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_16d

    if-eqz v9, :cond_b

    monitor-exit v8

    .line 266
    return-void

    .line 268
    :cond_b
    :try_start_b
    invoke-static {}, Lsun/misc/Version;->getJvmVersionInfo()Z

    move-result v9

    sput-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    .line 269
    sget-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    if-nez v9, :cond_146

    .line 274
    const-string/jumbo v9, "java.vm.version"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_146

    .line 276
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 275
    if-eqz v9, :cond_146

    .line 276
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_146

    .line 277
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 275
    if-eqz v9, :cond_146

    .line 277
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_146

    .line 278
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 275
    if-eqz v9, :cond_146

    .line 279
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_major_version:I

    .line 280
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_minor_version:I

    .line 281
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_micro_version:I

    .line 282
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x5

    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_ef

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v12, :cond_ef

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "nextChar":I
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_14e

    .line 286
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 285
    if-eqz v9, :cond_14e

    .line 287
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_b4
    .catchall {:try_start_b .. :try_end_b4} :catchall_16d

    move-result v9

    .line 285
    if-eqz v9, :cond_14e

    .line 289
    const/4 v3, 0x4

    .line 297
    :cond_b8
    :goto_b8
    const/4 v9, 0x1

    :try_start_b9
    invoke-interface {v1, v9, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "uu":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_update_version:I

    .line 299
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/lit8 v10, v3, 0x1

    if-lt v9, v10, :cond_e7

    .line 300
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 301
    .local v0, "c":C
    const/16 v9, 0x61

    if-lt v0, v9, :cond_e7

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_e7

    .line 302
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_e5} :catch_167
    .catchall {:try_start_b9 .. :try_end_e5} :catchall_16d

    .line 303
    add-int/lit8 v3, v3, 0x1

    .line 310
    .end local v0    # "c":C
    :cond_e7
    :try_start_e7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v3, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 312
    .end local v3    # "nextChar":I
    .end local v6    # "uu":Ljava/lang/String;
    :cond_ef
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_146

    .line 316
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "res":[Ljava/lang/String;
    array-length v9, v4

    :goto_10d
    if-ge v7, v9, :cond_146

    aget-object v5, v4, v7

    .line 319
    .local v5, "s":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x62

    if-ne v10, v11, :cond_16a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_16a

    .line 320
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    .line 319
    if-eqz v10, :cond_16a

    .line 321
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    .line 319
    if-eqz v10, :cond_16a

    .line 323
    const/4 v7, 0x1

    const/4 v9, 0x3

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 322
    sput v7, Lsun/misc/Version;->jvm_build_number:I

    .line 330
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_146
    invoke-static {}, Lsun/misc/Version;->getJdkVersionInfo()V

    .line 331
    const/4 v7, 0x1

    sput-boolean v7, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_14c
    .catchall {:try_start_e7 .. :try_end_14c} :catchall_16d

    monitor-exit v8

    .line 332
    return-void

    .line 290
    .restart local v3    # "nextChar":I
    :cond_14e
    const/4 v9, 0x1

    :try_start_14f
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 291
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_161
    .catchall {:try_start_14f .. :try_end_161} :catchall_16d

    move-result v9

    .line 290
    if-eqz v9, :cond_b8

    .line 293
    const/4 v3, 0x3

    goto/16 :goto_b8

    .line 306
    :catch_167
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    monitor-exit v8

    .line 308
    return-void

    .line 318
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "nextChar":I
    .restart local v4    # "res":[Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_16a
    add-int/lit8 v7, v7, 0x1

    goto :goto_10d

    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_16d
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized jdkBuildNumber()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 256
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 257
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 259
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMajorVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 199
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 200
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 202
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMicroVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 221
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 222
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 224
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMinorVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 210
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 211
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 213
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkSpecialVersion()Ljava/lang/String;
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 240
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 241
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 243
    :cond_a
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 244
    invoke-static {}, Lsun/misc/Version;->getJdkSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 246
    :cond_14
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkUpdateVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 233
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 234
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 236
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmBuildNumber()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 187
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 188
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 190
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMajorVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 125
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 126
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 128
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMicroVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 152
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 153
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 155
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMinorVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 138
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 139
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 141
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmSpecialVersion()Ljava/lang/String;
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 171
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 172
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 174
    :cond_a
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 175
    invoke-static {}, Lsun/misc/Version;->getJvmSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 177
    :cond_14
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmUpdateVersion()I
    .registers 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 164
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 165
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 167
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static print()V
    .registers 1

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 67
    return-void
.end method

.method public static print(Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 85
    .local v1, "isHeadless":Z
    const-string/jumbo v5, "java.awt.headless"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "headless":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 87
    const/4 v1, 0x1

    .line 91
    :cond_14
    const-string/jumbo v5, " version \"0\""

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v5, "Android Runtime (build 0.9"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 99
    const-string/jumbo v5, ", profile "

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    :cond_2f
    const-string/jumbo v5, "Android Runtime"

    const-string/jumbo v6, "Embedded"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_44

    if-eqz v1, :cond_44

    .line 104
    const-string/jumbo v5, ", headless"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 106
    :cond_44
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(C)V

    .line 109
    const-string/jumbo v5, "java.vm.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "java_vm_name":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "java_vm_version":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.info"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "java_vm_info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (build "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    const-string/jumbo v6, ")"

    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static println()V
    .registers 1

    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 76
    return-void
.end method
