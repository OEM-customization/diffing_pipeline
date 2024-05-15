.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api CANONICAL_DECOMPOSITION:I = 0x1

.field public static final whitelist core-platform-api test-api FULL_DECOMPOSITION:I = 0x2

.field public static final whitelist core-platform-api test-api IDENTICAL:I = 0x3

.field public static final whitelist core-platform-api test-api NO_DECOMPOSITION:I = 0x0

.field public static final whitelist core-platform-api test-api PRIMARY:I = 0x0

.field public static final whitelist core-platform-api test-api SECONDARY:I = 0x1

.field public static final whitelist core-platform-api test-api TERTIARY:I = 0x2


# instance fields
.field greylist icuColl:Landroid/icu/text/Collator;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RuleBasedCollator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 490
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/Collator;)V
    .registers 2
    .param p1, "icuColl"    # Landroid/icu/text/Collator;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 498
    return-void
.end method

.method private greylist-max-o decompositionMode_ICU_Java(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 417
    move v0, p1

    .line 418
    .local v0, "javaMode":I
    const/16 v1, 0x10

    if-eq p1, v1, :cond_c

    const/16 v1, 0x11

    if-eq p1, v1, :cond_a

    goto :goto_e

    .line 423
    :cond_a
    const/4 v0, 0x1

    goto :goto_e

    .line 420
    :cond_c
    const/4 v0, 0x0

    .line 421
    nop

    .line 426
    :goto_e
    return v0
.end method

.method private greylist-max-o decompositionMode_Java_ICU(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 407
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 409
    const/16 v0, 0x11

    return v0

    .line 413
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1f
    const/16 v0, 0x10

    return v0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 402
    :try_start_3
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 402
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getInstance()Ljava/text/Collator;
    .registers 2

    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 219
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 219
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .registers 4
    .param p0, "desiredLocale"    # Ljava/util/Locale;

    .line 231
    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 232
    if-eqz p0, :cond_14

    .line 235
    :try_start_5
    new-instance v1, Ljava/text/RuleBasedCollator;

    .line 236
    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, v2}, Ljava/text/RuleBasedCollator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    monitor-exit v0

    .line 235
    return-object v1

    .line 237
    :catchall_12
    move-exception v1

    goto :goto_1c

    .line 233
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "desiredLocale":Ljava/util/Locale;
    throw v1

    .line 237
    .restart local p0    # "desiredLocale":Ljava/util/Locale;
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_12

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 443
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 444
    .local v0, "clone":Ljava/text/Collator;
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator;

    iput-object v1, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 445
    return-object v0

    .line 446
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_11
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 460
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 461
    return v0

    .line 463
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 464
    return v1

    .line 466
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 467
    return v1

    .line 469
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/Collator;

    .line 471
    .local v2, "other":Ljava/text/Collator;
    iget-object v3, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_21

    iget-object v3, v2, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_1f

    goto :goto_27

    :cond_1f
    move v0, v1

    goto :goto_27

    :cond_21
    iget-object v0, v2, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v3, v0}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_27
    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 307
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist core-platform-api test-api getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public declared-synchronized whitelist core-platform-api test-api getDecomposition()I
    .registers 2

    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    .line 373
    .end local p0    # "this":Ljava/text/Collator;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getStrength()I
    .registers 3

    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getStrength()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    .line 326
    .local v0, "value":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    const/4 v1, 0x3

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    monitor-exit p0

    return v1

    .line 324
    .end local v0    # "value":I
    .end local p0    # "this":Ljava/text/Collator;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api hashCode()I
.end method

.method public declared-synchronized whitelist core-platform-api test-api setDecomposition(I)V
    .registers 4
    .param p1, "decompositionMode"    # I

    monitor-enter p0

    .line 388
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setDecomposition(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 389
    monitor-exit p0

    return-void

    .line 387
    .end local p0    # "this":Ljava/text/Collator;
    .end local p1    # "decompositionMode":I
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api setStrength(I)V
    .registers 3
    .param p1, "newStrength"    # I

    monitor-enter p0

    .line 345
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 346
    const/16 p1, 0xf

    .line 348
    :cond_6
    :try_start_6
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Collator;->setStrength(I)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 349
    monitor-exit p0

    return-void

    .line 344
    .end local p0    # "this":Ljava/text/Collator;
    .end local p1    # "newStrength":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
