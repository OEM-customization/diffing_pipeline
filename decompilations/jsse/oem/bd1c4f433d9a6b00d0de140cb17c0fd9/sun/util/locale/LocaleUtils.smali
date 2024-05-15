.class public final Lsun/util/locale/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_4
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    if-ne p0, p1, :cond_5

    .line 52
    return v7

    .line 55
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 56
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_10

    .line 57
    return v6

    .line 60
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v3, :cond_2b

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 63
    .local v1, "c2":C
    if-eq v0, v1, :cond_28

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    if-eq v4, v5, :cond_28

    .line 64
    return v6

    .line 60
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 67
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_2b
    return v7
.end method

.method static isAlpha(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    const/16 v2, 0x41

    if-lt p0, v2, :cond_b

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x61

    if-lt p0, v2, :cond_13

    const/16 v2, 0x7a

    if-le p0, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method static isAlphaNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 196
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isAlphaNumericString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 201
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 203
    const/4 v2, 0x0

    return v2

    .line 201
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 206
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method static isAlphaString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 173
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 175
    const/4 v2, 0x0

    return v2

    .line 173
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 178
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method static isEmpty(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method static isEmpty(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method static isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method static isEmpty(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private static isLower(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 164
    const/16 v1, 0x61

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method static isNumeric(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 182
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method static isNumericString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 187
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 189
    const/4 v2, 0x0

    return v2

    .line 187
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 192
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private static isUpper(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 160
    const/16 v1, 0x41

    if-lt p0, v1, :cond_a

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method static toLower(C)C
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 82
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .end local p0    # "c":C
    :cond_9
    return p0
.end method

.method public static toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 90
    .local v4, "len":I
    const/4 v3, 0x0

    .line 91
    .local v3, "idx":I
    :goto_5
    if-ge v3, v4, :cond_11

    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 96
    :cond_11
    if-ne v3, v4, :cond_17

    .line 97
    return-object p0

    .line 91
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 100
    :cond_17
    new-array v0, v4, [C

    .line 101
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v4, :cond_2c

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 103
    .local v1, "c":C
    if-ge v2, v3, :cond_27

    .end local v1    # "c":C
    :goto_22
    aput-char v1, v0, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 103
    .restart local v1    # "c":C
    :cond_27
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v1

    goto :goto_22

    .line 105
    .end local v1    # "c":C
    :cond_2c
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method static toTitleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "len":I
    if-nez v4, :cond_7

    .line 131
    return-object p0

    .line 133
    :cond_7
    const/4 v3, 0x0

    .line 134
    .local v3, "idx":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 135
    const/4 v3, 0x1

    :goto_13
    if-ge v3, v4, :cond_1f

    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isUpper(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 141
    :cond_1f
    if-ne v3, v4, :cond_25

    .line 142
    return-object p0

    .line 135
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 145
    :cond_25
    new-array v0, v4, [C

    .line 146
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v4, :cond_47

    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 148
    .local v1, "c":C
    if-nez v2, :cond_3b

    if-nez v3, :cond_3b

    .line 149
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    move-result v5

    aput-char v5, v0, v2

    .line 146
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 150
    :cond_3b
    if-ge v2, v3, :cond_40

    .line 151
    aput-char v1, v0, v2

    goto :goto_38

    .line 153
    :cond_40
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    aput-char v5, v0, v2

    goto :goto_38

    .line 156
    .end local v1    # "c":C
    :cond_47
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method static toUpper(C)C
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 78
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .end local p0    # "c":C
    :cond_9
    return p0
.end method

.method static toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 110
    .local v4, "len":I
    const/4 v3, 0x0

    .line 111
    .local v3, "idx":I
    :goto_5
    if-ge v3, v4, :cond_11

    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->isLower(C)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 116
    :cond_11
    if-ne v3, v4, :cond_17

    .line 117
    return-object p0

    .line 111
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 120
    :cond_17
    new-array v0, v4, [C

    .line 121
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v4, :cond_2c

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 123
    .local v1, "c":C
    if-ge v2, v3, :cond_27

    .end local v1    # "c":C
    :goto_22
    aput-char v1, v0, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 123
    .restart local v1    # "c":C
    :cond_27
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toUpper(C)C

    move-result v1

    goto :goto_22

    .line 125
    .end local v1    # "c":C
    :cond_2c
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
