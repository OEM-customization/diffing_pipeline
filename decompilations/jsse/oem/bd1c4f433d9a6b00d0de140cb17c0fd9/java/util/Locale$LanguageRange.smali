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
.field public static final MAX_WEIGHT:D = 1.0

.field public static final MIN_WEIGHT:D


# instance fields
.field private volatile hash:I

.field private final range:Ljava/lang/String;

.field private final weight:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 3027
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 3028
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .registers 12
    .param p1, "range"    # Ljava/lang/String;
    .param p2, "weight"    # D

    .prologue
    const/4 v6, 0x0

    .line 3043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3013
    iput v6, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3044
    if-nez p1, :cond_e

    .line 3045
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 3047
    :cond_e
    const-wide/16 v4, 0x0

    cmpg-double v3, p2, v4

    if-ltz v3, :cond_1a

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p2, v4

    if-lez v3, :cond_34

    .line 3048
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "weight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3051
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3054
    const/4 v1, 0x0

    .line 3055
    .local v1, "isIllFormed":Z
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3056
    .local v2, "subtags":[Ljava/lang/String;
    aget-object v3, v2, v6

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_52

    .line 3057
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 3056
    if-eqz v3, :cond_6f

    .line 3058
    :cond_52
    const/4 v1, 0x1

    .line 3067
    :cond_53
    :goto_53
    if-eqz v1, :cond_80

    .line 3068
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3060
    :cond_6f
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_70
    array-length v3, v2

    if-ge v0, v3, :cond_53

    .line 3061
    aget-object v3, v2, v0

    invoke-static {v3, v6}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 3062
    const/4 v1, 0x1

    .line 3063
    goto :goto_53

    .line 3060
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 3071
    .end local v0    # "i":I
    :cond_80
    iput-object p1, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    .line 3072
    iput-wide p2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    .line 3073
    return-void
.end method

.method private static isSubtagIllFormed(Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "isFirstSubtag"    # Z

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3077
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_18

    .line 3078
    :cond_17
    return v6

    .line 3079
    :cond_18
    const-string/jumbo v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3080
    return v3

    .line 3082
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3083
    .local v1, "charArray":[C
    if-eqz p1, :cond_36

    .line 3084
    array-length v4, v1

    move v2, v3

    :goto_2a
    if-ge v2, v4, :cond_4c

    aget-char v0, v1, v2

    .line 3085
    .local v0, "c":C
    if-lt v0, v7, :cond_32

    if-le v0, v8, :cond_33

    .line 3086
    :cond_32
    return v6

    .line 3084
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 3090
    .end local v0    # "c":C
    :cond_36
    array-length v4, v1

    move v2, v3

    :goto_38
    if-ge v2, v4, :cond_4c

    aget-char v0, v1, v2

    .line 3091
    .restart local v0    # "c":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_46

    const/16 v5, 0x39

    if-le v0, v5, :cond_47

    if-ge v0, v7, :cond_47

    .line 3092
    :cond_46
    return v6

    .line 3091
    :cond_47
    if-gt v0, v8, :cond_46

    .line 3090
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 3096
    .end local v0    # "c":C
    :cond_4c
    return v3
.end method

.method public static mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3260
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3183
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3207
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Locale$LanguageRange;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3293
    if-ne p0, p1, :cond_5

    .line 3294
    return v1

    .line 3296
    :cond_5
    instance-of v3, p1, Ljava/util/Locale$LanguageRange;

    if-nez v3, :cond_a

    .line 3297
    return v2

    :cond_a
    move-object v0, p1

    .line 3299
    check-cast v0, Ljava/util/Locale$LanguageRange;

    .line 3300
    .local v0, "other":Ljava/util/Locale$LanguageRange;
    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    iget v4, v0, Ljava/util/Locale$LanguageRange;->hash:I

    if-ne v3, v4, :cond_28

    .line 3301
    iget-object v3, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3300
    if-eqz v3, :cond_28

    .line 3302
    iget-wide v4, p0, Ljava/util/Locale$LanguageRange;->weight:D

    iget-wide v6, v0, Ljava/util/Locale$LanguageRange;->weight:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_26

    .line 3300
    :goto_25
    return v1

    :cond_26
    move v1, v2

    .line 3302
    goto :goto_25

    :cond_28
    move v1, v2

    .line 3300
    goto :goto_25
.end method

.method public getRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3105
    iget-object v0, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .registers 3

    .prologue
    .line 3114
    iget-wide v0, p0, Ljava/util/Locale$LanguageRange;->weight:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 3270
    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    if-nez v3, :cond_20

    .line 3271
    const/16 v2, 0x11

    .line 3272
    .local v2, "result":I
    iget-object v3, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit16 v2, v3, 0x275

    .line 3273
    iget-wide v4, p0, Ljava/util/Locale$LanguageRange;->weight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 3274
    .local v0, "bitsWeight":J
    mul-int/lit8 v3, v2, 0x25

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    xor-long/2addr v4, v0

    long-to-int v4, v4

    add-int v2, v3, v4

    .line 3275
    iput v2, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3277
    .end local v0    # "bitsWeight":J
    .end local v2    # "result":I
    :cond_20
    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    return v3
.end method
