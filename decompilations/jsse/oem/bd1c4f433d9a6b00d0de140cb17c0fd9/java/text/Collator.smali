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
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field public static final FULL_DECOMPOSITION:I = 0x2

.field public static final IDENTICAL:I = 0x3

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# instance fields
.field icuColl:Landroid/icu/text/Collator;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RuleBasedCollator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 485
    return-void
.end method

.method constructor <init>(Landroid/icu/text/Collator;)V
    .registers 2
    .param p1, "icuColl"    # Landroid/icu/text/Collator;

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 491
    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 414
    move v0, p1

    .line 415
    .local v0, "javaMode":I
    packed-switch p1, :pswitch_data_a

    .line 423
    :goto_4
    return v0

    .line 417
    :pswitch_5
    const/4 v0, 0x0

    .line 418
    goto :goto_4

    .line 420
    :pswitch_7
    const/4 v0, 0x1

    .line 421
    goto :goto_4

    .line 415
    nop

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_24

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :pswitch_1d
    const/16 v0, 0x11

    return v0

    .line 408
    :pswitch_20
    const/16 v0, 0x10

    return v0

    .line 404
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .prologue
    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 400
    :try_start_3
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocales()[Ljava/util/Locale;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Ljava/text/Collator;
    .registers 2

    .prologue
    const-class v1, Ljava/text/Collator;

    monitor-enter v1

    .line 219
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .registers 4
    .param p0, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    const-class v1, Ljava/text/Collator;

    monitor-enter v1

    .line 233
    if-nez p0, :cond_11

    .line 234
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "locale == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :cond_11
    :try_start_11
    new-instance v2, Ljava/text/RuleBasedCollator;

    .line 237
    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 236
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v2, v0}, Ljava/text/RuleBasedCollator;-><init>(Landroid/icu/text/RuleBasedCollator;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_e

    monitor-exit v1

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 438
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 439
    .local v0, "clone":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v2}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/Collator;

    iput-object v2, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 440
    return-object v0

    .line 441
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_11
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 278
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-ne p0, p1, :cond_5

    .line 456
    return v1

    .line 458
    :cond_5
    if-nez p1, :cond_8

    .line 459
    return v2

    .line 461
    :cond_8
    invoke-virtual {p0}, Ljava/text/Collator;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    .line 462
    return v2

    :cond_13
    move-object v0, p1

    .line 464
    check-cast v0, Ljava/text/Collator;

    .line 466
    .local v0, "other":Ljava/text/Collator;
    iget-object v3, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_21

    iget-object v3, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    move v1, v2

    goto :goto_1e

    :cond_21
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1, v2}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1e
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public declared-synchronized getDecomposition()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 371
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStrength()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 323
    :try_start_1
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1}, Landroid/icu/text/Collator;->getStrength()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    .line 324
    .local v0, "value":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_c

    const/4 v0, 0x3

    .end local v0    # "value":I
    :cond_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract hashCode()I
.end method

.method public declared-synchronized setDecomposition(I)V
    .registers 4
    .param p1, "decompositionMode"    # I

    .prologue
    monitor-enter p0

    .line 386
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setDecomposition(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 387
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStrength(I)V
    .registers 3
    .param p1, "newStrength"    # I

    .prologue
    monitor-enter p0

    .line 343
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 344
    const/16 p1, 0xf

    .line 346
    :cond_6
    :try_start_6
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Collator;->setStrength(I)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 347
    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
