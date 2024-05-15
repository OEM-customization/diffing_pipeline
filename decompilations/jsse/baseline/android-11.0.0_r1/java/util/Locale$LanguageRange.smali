.class public final Ljava/util/Locale$LanguageRange;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageRange"
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api MAX_WEIGHT:D = 1.0

.field public static final whitelist core-platform-api test-api MIN_WEIGHT:D


# instance fields
.field private volatile greylist-max-o hash:I

.field private final greylist-max-o range:Ljava/lang/String;

.field private final greylist-max-o weight:D


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "range"    # Ljava/lang/String;

    .line 3361
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 3362
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;D)V
    .registers 10
    .param p1, "range"    # Ljava/lang/String;
    .param p2, "weight"    # D

    .line 3377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3347
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3378
    if-eqz p1, :cond_76

    .line 3381
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-ltz v1, :cond_5f

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p2, v1

    if-gtz v1, :cond_5f

    .line 3385
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3388
    const/4 v1, 0x0

    .line 3389
    .local v1, "isIllFormed":Z
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3390
    .local v3, "subtags":[Ljava/lang/String;
    aget-object v4, v3, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_40

    .line 3391
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_40

    .line 3394
    :cond_2f
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_30
    array-length v4, v3

    if-ge v2, v4, :cond_41

    .line 3395
    aget-object v4, v3, v2

    invoke-static {v4, v0}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3396
    const/4 v1, 0x1

    .line 3397
    goto :goto_41

    .line 3394
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3392
    .end local v2    # "i":I
    :cond_40
    :goto_40
    const/4 v1, 0x1

    .line 3401
    :cond_41
    :goto_41
    if-nez v1, :cond_48

    .line 3405
    iput-object p1, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    .line 3406
    iput-wide p2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    .line 3407
    return-void

    .line 3402
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "range="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3382
    .end local v1    # "isIllFormed":Z
    .end local v3    # "subtags":[Ljava/lang/String;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3379
    :cond_76
    const/4 v0, 0x0

    throw v0
.end method

.method private static greylist-max-o isSubtagIllFormed(Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "isFirstSubtag"    # Z

    .line 3411
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_12

    goto :goto_4d

    .line 3413
    :cond_12
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 3414
    return v2

    .line 3416
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3417
    .local v0, "charArray":[C
    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-eqz p1, :cond_35

    .line 3418
    array-length v5, v0

    move v6, v2

    :goto_28
    if-ge v6, v5, :cond_4c

    aget-char v7, v0, v6

    .line 3419
    .local v7, "c":C
    if-lt v7, v4, :cond_34

    if-le v7, v3, :cond_31

    goto :goto_34

    .line 3418
    .end local v7    # "c":C
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 3420
    .restart local v7    # "c":C
    :cond_34
    :goto_34
    return v1

    .line 3424
    .end local v7    # "c":C
    :cond_35
    array-length v5, v0

    move v6, v2

    :goto_37
    if-ge v6, v5, :cond_4c

    aget-char v7, v0, v6

    .line 3425
    .restart local v7    # "c":C
    const/16 v8, 0x30

    if-lt v7, v8, :cond_4b

    const/16 v8, 0x39

    if-le v7, v8, :cond_45

    if-lt v7, v4, :cond_4b

    :cond_45
    if-le v7, v3, :cond_48

    goto :goto_4b

    .line 3424
    .end local v7    # "c":C
    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 3426
    .restart local v7    # "c":C
    :cond_4b
    :goto_4b
    return v1

    .line 3430
    .end local v7    # "c":C
    :cond_4c
    return v2

    .line 3412
    .end local v0    # "charArray":[C
    :cond_4d
    :goto_4d
    return v1
.end method

.method public static whitelist core-platform-api test-api mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3594
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3517
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api parse(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3541
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Locale$LanguageRange;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3627
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3628
    return v0

    .line 3630
    :cond_4
    instance-of v1, p1, Ljava/util/Locale$LanguageRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3631
    return v2

    .line 3633
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .line 3634
    .local v1, "other":Ljava/util/Locale$LanguageRange;
    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    iget v4, v1, Ljava/util/Locale$LanguageRange;->hash:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    .line 3635
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-wide v3, p0, Ljava/util/Locale$LanguageRange;->weight:D

    iget-wide v5, v1, Ljava/util/Locale$LanguageRange;->weight:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    .line 3634
    :goto_27
    return v0
.end method

.method public whitelist core-platform-api test-api getRange()Ljava/lang/String;
    .registers 2

    .line 3439
    iget-object v0, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getWeight()D
    .registers 3

    .line 3448
    iget-wide v0, p0, Ljava/util/Locale$LanguageRange;->weight:D

    return-wide v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 3604
    iget v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    if-nez v0, :cond_20

    .line 3605
    const/16 v0, 0x11

    .line 3606
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3607
    .end local v0    # "result":I
    .local v1, "result":I
    iget-wide v2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 3608
    .local v2, "bitsWeight":J
    mul-int/lit8 v0, v1, 0x25

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 3609
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3611
    .end local v0    # "result":I
    .end local v2    # "bitsWeight":J
    :cond_20
    iget v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    return v0
.end method
