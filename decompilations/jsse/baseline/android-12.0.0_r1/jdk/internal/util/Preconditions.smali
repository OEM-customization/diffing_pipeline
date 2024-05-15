.class public Ljdk/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/List;

    .line 35
    invoke-static {p0, p1}, Ljdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkFromIndexSize(IIILjava/util/function/BiFunction;)I
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "size"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 341
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_a

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_a

    .line 343
    return p0

    .line 342
    :cond_a
    invoke-static {p3, p0, p1, p2}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkFromToIndex(IIILjava/util/function/BiFunction;)I
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 293
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    .line 295
    return p0

    .line 294
    :cond_7
    invoke-static {p3, p0, p1, p2}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkIndex(IILjava/util/function/BiFunction;)I
    .registers 4
    .param p0, "index"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(II",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 246
    .local p2, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    .line 248
    return p0

    .line 247
    :cond_5
    invoke-static {p2, p0, p1}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static varargs blacklist outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "checkKind"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 58
    .local p0, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "largs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_8

    .line 60
    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 61
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_e
    if-nez v1, :cond_1a

    .line 62
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v0}, Ljdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    .line 61
    :goto_1b
    return-object v2
.end method

.method private static blacklist outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "size"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 80
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "checkFromIndexSize"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 74
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "checkFromToIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;II)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 68
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "checkIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist outOfBoundsExceptionFormatter(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TX;>;)",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;"
        }
    .end annotation

    .line 154
    .local p0, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TX;>;"
    new-instance v0, Ljdk/internal/util/Preconditions$1;

    invoke-direct {v0, p0}, Ljdk/internal/util/Preconditions$1;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static blacklist outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .param p0, "checkKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_e

    if-nez p1, :cond_e

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Range check failed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_e
    const-string v1, "Range check failed: %s"

    const/4 v2, 0x1

    if-nez p0, :cond_1c

    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1c
    if-nez p1, :cond_27

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_27
    const/4 v1, 0x0

    .line 172
    .local v1, "argSize":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "checkFromIndexSize"

    const-string v5, "checkFromToIndex"

    const-string v6, "checkIndex"

    const/4 v7, -0x1

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_de

    :cond_37
    goto :goto_50

    :sswitch_38
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v8

    goto :goto_51

    :sswitch_40
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_51

    :sswitch_48
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v0

    goto :goto_51

    :goto_50
    move v3, v7

    :goto_51
    packed-switch v3, :pswitch_data_ec

    goto :goto_59

    .line 178
    :pswitch_55
    const/4 v1, 0x3

    .line 179
    goto :goto_59

    .line 174
    :pswitch_57
    const/4 v1, 0x2

    .line 175
    nop

    .line 184
    :goto_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_62

    const-string v3, ""

    goto :goto_63

    :cond_62
    move-object v3, p0

    :goto_63
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_f6

    :cond_6a
    goto :goto_82

    :sswitch_6b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v7, v8

    goto :goto_82

    :sswitch_73
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v7, v2

    goto :goto_82

    :sswitch_7b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v7, v0

    :goto_82
    const/4 v3, 0x3

    packed-switch v7, :pswitch_data_104

    .line 195
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v2

    const-string v0, "Range check failed: %s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_93
    new-array v3, v3, [Ljava/lang/Object;

    .line 193
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v8

    .line 192
    const-string v0, "Range [%d, %<d + %d) out-of-bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_ae
    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v8

    .line 189
    const-string v0, "Range [%d, %d) out-of-bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_c9
    new-array v3, v8, [Ljava/lang/Object;

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v2

    .line 186
    const-string v0, "Index %d out-of-bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_de
    .sparse-switch
        -0x201dc756 -> :sswitch_48
        0x6def39e5 -> :sswitch_40
        0x6e348341 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_57
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :sswitch_data_f6
    .sparse-switch
        -0x201dc756 -> :sswitch_7b
        0x6def39e5 -> :sswitch_73
        0x6e348341 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_ae
        :pswitch_93
    .end packed-switch
.end method
