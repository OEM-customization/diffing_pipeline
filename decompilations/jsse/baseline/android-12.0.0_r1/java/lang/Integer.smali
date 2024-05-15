.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$IntegerCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x4

.field static final greylist-max-o DigitOnes:[C

.field static final greylist-max-o DigitTens:[C

.field public static final whitelist test-api MAX_VALUE:I = 0x7fffffff

.field public static final whitelist test-api MIN_VALUE:I = -0x80000000

.field public static final whitelist test-api SIZE:I = 0x20

.field private static final greylist-max-o SMALL_NEG_VALUES:[Ljava/lang/String;

.field private static final greylist-max-o SMALL_NONNEG_VALUES:[Ljava/lang/String;

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o digits:[C

.field private static final whitelist serialVersionUID:J = 0x12e2a0a4f7818738L

.field static final greylist-max-o sizeTable:[I


# instance fields
.field private final greylist-max-p value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 73
    const-string v0, "int"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_34

    sput-object v0, Ljava/lang/Integer;->digits:[C

    .line 345
    const/16 v0, 0x64

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    .line 346
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .line 349
    new-array v1, v0, [C

    fill-array-data v1, :array_5c

    sput-object v1, Ljava/lang/Integer;->DigitTens:[C

    .line 362
    new-array v0, v0, [C

    fill-array-data v0, :array_c4

    sput-object v0, Ljava/lang/Integer;->DigitOnes:[C

    .line 501
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_12c

    sput-object v0, Ljava/lang/Integer;->sizeTable:[I

    return-void

    nop

    :array_34
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_5c
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_c4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_12c
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 884
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 885
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 886
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 901
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 902
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljava/lang/Integer;->value:I

    .line 903
    return-void
.end method

.method public static whitelist test-api bitCount(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1481
    ushr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 1482
    const v0, 0x33333333

    and-int v1, p0, v0

    ushr-int/lit8 v2, p0, 0x2

    and-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1483
    .end local p0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 p0, v1, 0x4

    add-int/2addr p0, v1

    const v0, 0xf0f0f0f

    and-int/2addr p0, v0

    .line 1484
    .end local v1    # "i":I
    .restart local p0    # "i":I
    ushr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 1485
    ushr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 1486
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static whitelist test-api compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1269
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    goto :goto_9

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static whitelist test-api compareUnsigned(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1285
    const/high16 v0, -0x80000000

    add-int v1, p0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1191
    const/16 v0, 0xa

    .line 1192
    .local v0, "radix":I
    const/4 v1, 0x0

    .line 1193
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1196
    .local v2, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a4

    .line 1198
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1200
    .local v3, "firstChar":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 1201
    const/4 v2, 0x1

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1203
    :cond_17
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1d

    .line 1204
    add-int/lit8 v1, v1, 0x1

    .line 1207
    :cond_1d
    :goto_1d
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_50

    .line 1211
    :cond_2e
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1212
    add-int/lit8 v1, v1, 0x1

    .line 1213
    const/16 v0, 0x10

    goto :goto_54

    .line 1215
    :cond_3b
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_54

    .line 1216
    add-int/lit8 v1, v1, 0x1

    .line 1217
    const/16 v0, 0x8

    goto :goto_54

    .line 1208
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    .line 1209
    const/16 v0, 0x10

    .line 1220
    :cond_54
    :goto_54
    const-string v4, "-"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9c

    const-string v5, "+"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 1224
    :try_start_64
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 1225
    .local v5, "result":Ljava/lang/Integer;
    if-eqz v2, :cond_78

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_77} :catch_7a

    goto :goto_79

    :cond_78
    move-object v4, v5

    .line 1233
    .end local v5    # "result":Ljava/lang/Integer;
    .local v4, "result":Ljava/lang/Integer;
    :goto_79
    goto :goto_9b

    .line 1226
    .end local v4    # "result":Ljava/lang/Integer;
    :catch_7a
    move-exception v5

    .line 1230
    .local v5, "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_91

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_95

    .line 1231
    :cond_91
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_95
    nop

    .line 1232
    .local v4, "constant":Ljava/lang/String;
    invoke-static {v4, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    .line 1234
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .local v4, "result":Ljava/lang/Integer;
    :goto_9b
    return-object v4

    .line 1221
    .end local v4    # "result":Ljava/lang/Integer;
    :cond_9c
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "Sign character in wrong position"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1197
    .end local v3    # "firstChar":C
    :cond_a4
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length string"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist test-api divideUnsigned(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 1329
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static greylist-max-o formatUnsignedInt(II[CII)I
    .registers 11
    .param p0, "val"    # I
    .param p1, "shift"    # I
    .param p2, "buf"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 333
    move v0, p4

    .line 334
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 335
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 337
    .local v2, "mask":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    add-int v3, p3, v0

    sget-object v4, Ljava/lang/Integer;->digits:[C

    and-int v5, p0, v2

    aget-char v4, v4, v5

    aput-char v4, p2, v3

    .line 338
    ushr-int/2addr p0, p1

    .line 339
    if-eqz p0, :cond_16

    if-gtz v0, :cond_5

    .line 341
    :cond_16
    return v0
.end method

.method static greylist-max-o getChars(II[C)V
    .registers 8
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 469
    move v0, p1

    .line 470
    .local v0, "charPos":I
    const/4 v1, 0x0

    .line 472
    .local v1, "sign":C
    if-gez p0, :cond_7

    .line 473
    const/16 v1, 0x2d

    .line 474
    neg-int p0, p0

    .line 478
    :cond_7
    :goto_7
    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_29

    .line 479
    div-int/lit8 v2, p0, 0x64

    .line 481
    .local v2, "q":I
    shl-int/lit8 v3, v2, 0x6

    shl-int/lit8 v4, v2, 0x5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 482
    .local v3, "r":I
    move p0, v2

    .line 483
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 484
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    goto :goto_7

    .line 490
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_29
    const v2, 0xcccd

    mul-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x13

    .line 491
    .restart local v2    # "q":I
    shl-int/lit8 v3, v2, 0x3

    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 492
    .restart local v3    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->digits:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 493
    move p0, v2

    .line 494
    if-nez p0, :cond_29

    .line 496
    if-eqz v1, :cond_47

    .line 497
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p2, v0

    .line 499
    :cond_47
    return-void
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "nm"    # Ljava/lang/String;

    .line 1046
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 1092
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1093
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static whitelist test-api getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Integer;

    .line 1134
    const/4 v0, 0x0

    .line 1136
    .local v0, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 1138
    goto :goto_8

    .line 1137
    :catch_7
    move-exception v1

    .line 1139
    :goto_8
    if-eqz v0, :cond_10

    .line 1141
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-object v1

    .line 1142
    :catch_f
    move-exception v1

    .line 1145
    :cond_10
    return-object p1
.end method

.method public static whitelist test-api hashCode(I)I
    .registers 1
    .param p0, "value"    # I

    .line 995
    return p0
.end method

.method public static whitelist test-api highestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .line 1383
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1384
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1385
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1386
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1387
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1388
    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method public static whitelist test-api lowestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .line 1406
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1611
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1625
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api numberOfLeadingZeros(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1432
    if-nez p0, :cond_5

    .line 1433
    const/16 v0, 0x20

    return v0

    .line 1434
    :cond_5
    const/4 v0, 0x1

    .line 1435
    .local v0, "n":I
    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x10

    shl-int/lit8 p0, p0, 0x10

    .line 1436
    :cond_e
    ushr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    .line 1437
    :cond_16
    ushr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_1e

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    .line 1438
    :cond_1e
    ushr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_26

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    .line 1439
    :cond_26
    ushr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    .line 1440
    return v0
.end method

.method public static whitelist test-api numberOfTrailingZeros(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1460
    if-nez p0, :cond_5

    const/16 v0, 0x20

    return v0

    .line 1461
    :cond_5
    const/16 v0, 0x1f

    .line 1462
    .local v0, "n":I
    shl-int/lit8 v1, p0, 0x10

    .local v1, "y":I
    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, -0x10

    move p0, v1

    .line 1463
    :cond_e
    shl-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_15

    add-int/lit8 v0, v0, -0x8

    move p0, v1

    .line 1464
    :cond_15
    shl-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, -0x4

    move p0, v1

    .line 1465
    :cond_1c
    shl-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_23

    add-int/lit8 v0, v0, -0x2

    move p0, v1

    .line 1466
    :cond_23
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    sub-int v2, v0, v2

    return v2
.end method

.method public static whitelist test-api parseInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 650
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseInt(Ljava/lang/String;I)I
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 575
    if-eqz p0, :cond_a5

    .line 580
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p1, v0, :cond_8b

    .line 585
    const/16 v0, 0x24

    if-gt p1, v0, :cond_71

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "result":I
    const/4 v1, 0x0

    .line 592
    .local v1, "negative":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 593
    .local v3, "len":I
    const v4, -0x7fffffff

    .line 597
    .local v4, "limit":I
    if-lez v3, :cond_6c

    .line 598
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 599
    .local v5, "firstChar":C
    const/16 v6, 0x30

    if-ge v5, v6, :cond_3c

    .line 600
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_28

    .line 601
    const/4 v1, 0x1

    .line 602
    const/high16 v4, -0x80000000

    goto :goto_2c

    .line 603
    :cond_28
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_37

    .line 606
    :goto_2c
    const/4 v6, 0x1

    if-eq v3, v6, :cond_32

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 607
    :cond_32
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 604
    :cond_37
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 610
    :cond_3c
    :goto_3c
    div-int v6, v4, p1

    .line 611
    .local v6, "multmin":I
    :goto_3e
    if-ge v2, v3, :cond_65

    .line 613
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 614
    .local v2, "digit":I
    if-ltz v2, :cond_60

    .line 617
    if-lt v0, v6, :cond_5b

    .line 620
    mul-int/2addr v0, p1

    .line 621
    add-int v8, v4, v2

    if-lt v0, v8, :cond_56

    .line 624
    sub-int/2addr v0, v2

    move v2, v7

    goto :goto_3e

    .line 622
    :cond_56
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 618
    :cond_5b
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 615
    :cond_60
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 626
    .end local v5    # "firstChar":C
    .end local v7    # "i":I
    .local v2, "i":I
    :cond_65
    nop

    .line 629
    if-eqz v1, :cond_6a

    move v5, v0

    goto :goto_6b

    :cond_6a
    neg-int v5, v0

    :goto_6b
    return v5

    .line 627
    .end local v6    # "multmin":I
    :cond_6c
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 586
    .end local v0    # "result":I
    .end local v1    # "negative":Z
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "limit":I
    :cond_71
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " greater than Character.MAX_RADIX"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_8b
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " less than Character.MIN_RADIX"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_a5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseUnsignedInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 746
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseUnsignedInt(Ljava/lang/String;I)I
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 698
    if-eqz p0, :cond_5a

    .line 702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 703
    .local v0, "len":I
    if-lez v0, :cond_55

    .line 704
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 705
    .local v2, "firstChar":C
    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_45

    .line 710
    const/4 v3, 0x5

    if-le v0, v3, :cond_40

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1e

    const/16 v3, 0x9

    if-gt v0, v3, :cond_1e

    goto :goto_40

    .line 714
    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 715
    .local v5, "ell":J
    const-wide v7, -0x100000000L

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-nez v3, :cond_30

    .line 716
    long-to-int v1, v5

    return v1

    .line 718
    :cond_30
    new-instance v3, Ljava/lang/NumberFormatException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 719
    const-string v1, "String value %s exceeds range of unsigned int."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 712
    .end local v5    # "ell":J
    :cond_40
    :goto_40
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 706
    :cond_45
    new-instance v3, Ljava/lang/NumberFormatException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 707
    const-string v1, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 725
    .end local v2    # "firstChar":C
    :cond_55
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 699
    .end local v0    # "len":I
    :cond_5a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api remainderUnsigned(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 1346
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api reverse(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1549
    const v0, 0x55555555

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v2, p0, 0x1

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1550
    const v0, 0x33333333

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, p0, 0x2

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1551
    const v0, 0xf0f0f0f

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v2, p0, 0x4

    and-int/2addr v0, v2

    or-int p0, v1, v0

    .line 1552
    shl-int/lit8 v0, p0, 0x18

    const v1, 0xff00

    and-int v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    or-int p0, v0, v1

    .line 1554
    return p0
.end method

.method public static whitelist test-api reverseBytes(I)I
    .registers 4
    .param p0, "i"    # I

    .line 1581
    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api rotateLeft(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 1510
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api rotateRight(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 1534
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api signum(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1568
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method static greylist-max-o stringSize(I)I
    .registers 3
    .param p0, "x"    # I

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "i":I
    :goto_1
    sget-object v1, Ljava/lang/Integer;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_a

    .line 508
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 506
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static whitelist test-api sum(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1597
    add-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api toBinaryString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 304
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toHexString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 234
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toOctalString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 272
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 10
    .param p0, "i"    # I

    .line 405
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_7

    .line 406
    const-string v0, "-2147483648"

    return-object v0

    .line 410
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p0, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    .line 411
    .local v2, "negative":Z
    :goto_e
    if-eqz v2, :cond_15

    const/16 v3, -0x64

    if-le p0, v3, :cond_1b

    goto :goto_19

    :cond_15
    const/16 v3, 0x64

    if-ge p0, v3, :cond_1b

    :goto_19
    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v0

    .line 412
    .local v3, "small":Z
    :goto_1c
    if-eqz v3, :cond_8a

    .line 413
    if-eqz v2, :cond_23

    sget-object v4, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    goto :goto_25

    :cond_23
    sget-object v4, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .line 415
    .local v4, "smallValues":[Ljava/lang/String;
    :goto_25
    const/16 v5, 0xa

    const/4 v6, 0x2

    if-eqz v2, :cond_5d

    .line 416
    neg-int p0, p0

    .line 417
    aget-object v7, v4, p0

    if-nez v7, :cond_87

    .line 418
    nop

    .line 419
    const/16 v7, 0x2d

    if-ge p0, v5, :cond_44

    new-instance v5, Ljava/lang/String;

    new-array v6, v6, [C

    aput-char v7, v6, v0

    sget-object v0, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v0, v0, p0

    aput-char v0, v6, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_5a

    .line 420
    :cond_44
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [C

    aput-char v7, v8, v0

    sget-object v0, Ljava/lang/Integer;->DigitTens:[C

    aget-char v0, v0, p0

    aput-char v0, v8, v1

    sget-object v0, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v0, v0, p0

    aput-char v0, v8, v6

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    :goto_5a
    aput-object v5, v4, p0

    goto :goto_87

    .line 423
    :cond_5d
    aget-object v7, v4, p0

    if-nez v7, :cond_87

    .line 424
    nop

    .line 425
    if-ge p0, v5, :cond_72

    new-instance v5, Ljava/lang/String;

    new-array v1, v1, [C

    sget-object v6, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v6, v6, p0

    aput-char v6, v1, v0

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_85

    .line 426
    :cond_72
    new-instance v5, Ljava/lang/String;

    new-array v6, v6, [C

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v0

    sget-object v0, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v0, v0, p0

    aput-char v0, v6, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    :goto_85
    aput-object v5, v4, p0

    .line 429
    :cond_87
    :goto_87
    aget-object v0, v4, p0

    return-object v0

    .line 431
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_8a
    if-eqz v2, :cond_93

    neg-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_97

    :cond_93
    invoke-static {p0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    .line 433
    .local v0, "size":I
    :goto_97
    new-array v1, v0, [C

    .line 434
    .local v1, "buf":[C
    invoke-static {p0, v0, v1}, Ljava/lang/Integer;->getChars(II[C)V

    .line 437
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static whitelist test-api toString(II)Ljava/lang/String;
    .registers 8
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .line 132
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_9

    .line 133
    :cond_7
    const/16 p1, 0xa

    .line 136
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_12

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_12
    const/16 v0, 0x21

    new-array v0, v0, [C

    .line 141
    .local v0, "buf":[C
    if-gez p0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 142
    .local v1, "negative":Z
    :goto_1b
    const/16 v2, 0x20

    .line 144
    .local v2, "charPos":I
    if-nez v1, :cond_20

    .line 145
    neg-int p0, p0

    .line 148
    :cond_20
    :goto_20
    neg-int v3, p1

    if-gt p0, v3, :cond_31

    .line 149
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "charPos":I
    .local v3, "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    rem-int v5, p0, p1

    neg-int v5, v5

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 150
    div-int/2addr p0, p1

    move v2, v3

    goto :goto_20

    .line 152
    .end local v3    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_31
    sget-object v3, Ljava/lang/Integer;->digits:[C

    neg-int v4, p0

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 154
    if-eqz v1, :cond_40

    .line 155
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x2d

    aput-char v3, v0, v2

    .line 158
    :cond_40
    new-instance v3, Ljava/lang/String;

    rsub-int/lit8 v4, v2, 0x21

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static whitelist test-api toUnsignedLong(I)J
    .registers 5
    .param p0, "x"    # I

    .line 1306
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api toUnsignedString(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .line 455
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(II)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o toUnsignedString0(II)Ljava/lang/String;
    .registers 6
    .param p0, "val"    # I
    .param p1, "shift"    # I

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 313
    .local v0, "mag":I
    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, v0

    div-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    .local v1, "chars":I
    new-array v2, v1, [C

    .line 316
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, v1}, Ljava/lang/Integer;->formatUnsignedInt(II[CII)I

    .line 320
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static whitelist test-api valueOf(I)Ljava/lang/Integer;
    .registers 3
    .param p0, "i"    # I

    .line 865
    const/16 v0, -0x80

    if-lt p0, v0, :cond_f

    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    if-gt p0, v0, :cond_f

    .line 866
    sget-object v0, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0

    .line 867
    :cond_f
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 801
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 775
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 911
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Integer;)I
    .registers 4
    .param p1, "anotherInteger"    # Ljava/lang/Integer;

    .line 1251
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 956
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1009
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1010
    iget v0, p0, Ljava/lang/Integer;->value:I

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 1012
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 947
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 982
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 928
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 938
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 920
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 970
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
