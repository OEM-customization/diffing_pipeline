.class Ljava/util/concurrent/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    .line 55
    .local v5, "size":I
    if-nez v5, :cond_b

    .line 56
    const-string/jumbo v6, "[]"

    return-object v6

    .line 57
    :cond_b
    const/4 v1, 0x0

    .line 60
    .local v1, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v5, :cond_25

    .line 61
    aget-object v2, v0, v3

    .line 63
    .local v2, "e":Ljava/lang/Object;
    if-ne v2, p0, :cond_20

    const-string/jumbo v4, "(this Collection)"

    .line 64
    .local v4, "s":Ljava/lang/String;
    :goto_16
    aput-object v4, v0, v3

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 63
    .end local v4    # "s":Ljava/lang/String;
    :cond_20
    invoke-static {v2}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_16

    .line 68
    .end local v2    # "e":Ljava/lang/Object;
    .end local v4    # "s":Ljava/lang/String;
    :cond_25
    invoke-static {v0, v5, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 106
    .local v2, "klen":I
    invoke-static {p1}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 105
    .local v4, "vlen":I
    add-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [C

    .line 107
    .local v0, "chars":[C
    invoke-virtual {v1, v6, v2, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 108
    const/16 v5, 0x3d

    aput-char v5, v0, v2

    .line 109
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v6, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    .end local v0    # "s":Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "null"

    :cond_b
    return-object v0
.end method

.method static toString([Ljava/lang/Object;II)Ljava/lang/String;
    .registers 11
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "charLength"    # I

    .prologue
    const/4 v7, 0x0

    .line 82
    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v6, p2

    new-array v0, v6, [C

    .line 83
    .local v0, "chars":[C
    const/16 v6, 0x5b

    aput-char v6, v0, v7

    .line 84
    const/4 v2, 0x1

    .line 85
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_d
    if-ge v1, p1, :cond_2e

    .line 86
    if-lez v1, :cond_38

    .line 87
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    const/16 v6, 0x2c

    aput-char v6, v0, v3

    .line 88
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    const/16 v6, 0x20

    aput-char v6, v0, v2

    move v2, v3

    .line 90
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_1e
    aget-object v5, p0, v1

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 92
    .local v4, "len":I
    invoke-virtual {v5, v7, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    add-int/2addr v2, v4

    .line 85
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_d

    .line 95
    .end local v4    # "len":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2e
    const/16 v6, 0x5d

    aput-char v6, v0, v3

    .line 97
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    :cond_38
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1e
.end method
