.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Long$LongCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x8

.field public static final whitelist test-api MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final whitelist test-api MIN_VALUE:J = -0x8000000000000000L

.field public static final whitelist test-api SIZE:I = 0x40

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final greylist-max-p value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const-string v0, "long"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 952
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 953
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 954
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 969
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 970
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Long;->value:J

    .line 971
    return-void
.end method

.method public static whitelist test-api bitCount(J)I
    .registers 8
    .param p0, "i"    # J

    .line 1475
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 1476
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v2, p0, v0

    const/4 v4, 0x2

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 1477
    .end local p0    # "i":J
    .local v2, "i":J
    const/4 p0, 0x4

    ushr-long p0, v2, p0

    add-long/2addr p0, v2

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr p0, v0

    .line 1478
    .end local v2    # "i":J
    .restart local p0    # "i":J
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1479
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1480
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1481
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static whitelist test-api compare(JJ)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1257
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static whitelist test-api compareUnsigned(JJ)I
    .registers 8
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1273
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 892
    const/16 v0, 0xa

    .line 893
    .local v0, "radix":I
    const/4 v1, 0x0

    .line 894
    .local v1, "index":I
    const/4 v2, 0x0

    .line 897
    .local v2, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a4

    .line 899
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 901
    .local v3, "firstChar":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 902
    const/4 v2, 0x1

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 904
    :cond_17
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1d

    .line 905
    add-int/lit8 v1, v1, 0x1

    .line 908
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

    .line 912
    :cond_2e
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 913
    add-int/lit8 v1, v1, 0x1

    .line 914
    const/16 v0, 0x10

    goto :goto_54

    .line 916
    :cond_3b
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_54

    .line 917
    add-int/lit8 v1, v1, 0x1

    .line 918
    const/16 v0, 0x8

    goto :goto_54

    .line 909
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    .line 910
    const/16 v0, 0x10

    .line 921
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

    .line 925
    :try_start_64
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v5

    .line 926
    .local v5, "result":Ljava/lang/Long;
    if-eqz v2, :cond_78

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_77} :catch_7a

    goto :goto_79

    :cond_78
    move-object v4, v5

    .line 934
    .end local v5    # "result":Ljava/lang/Long;
    .local v4, "result":Ljava/lang/Long;
    :goto_79
    goto :goto_9b

    .line 927
    .end local v4    # "result":Ljava/lang/Long;
    :catch_7a
    move-exception v5

    .line 931
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

    .line 932
    :cond_91
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_95
    nop

    .line 933
    .local v4, "constant":Ljava/lang/String;
    invoke-static {v4, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v6

    move-object v4, v6

    .line 935
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .local v4, "result":Ljava/lang/Long;
    :goto_9b
    return-object v4

    .line 922
    .end local v4    # "result":Ljava/lang/Long;
    :cond_9c
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "Sign character in wrong position"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 898
    .end local v3    # "firstChar":C
    :cond_a4
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length string"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist test-api divideUnsigned(JJ)J
    .registers 7
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 1296
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 1299
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gez v2, :cond_d

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x1

    :goto_f
    return-wide v0

    .line 1302
    :cond_10
    cmp-long v0, p0, v0

    if-lez v0, :cond_17

    .line 1303
    div-long v0, p0, p2

    return-wide v0

    .line 1311
    :cond_17
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1312
    invoke-static {p2, p3}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 1311
    return-wide v0
.end method

.method static greylist-max-o formatUnsignedLong(JI[CII)I
    .registers 12
    .param p0, "val"    # J
    .param p2, "shift"    # I
    .param p3, "buf"    # [C
    .param p4, "offset"    # I
    .param p5, "len"    # I

    .line 375
    move v0, p5

    .line 376
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    .line 377
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 379
    .local v2, "mask":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    add-int v3, p4, v0

    sget-object v4, Ljava/lang/Integer;->digits:[C

    long-to-int v5, p0

    and-int/2addr v5, v2

    aget-char v4, v4, v5

    aput-char v4, p3, v3

    .line 380
    ushr-long/2addr p0, p2

    .line 381
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_1a

    if-gtz v0, :cond_5

    .line 383
    :cond_1a
    return v0
.end method

.method static greylist-max-o getChars(JI[C)V
    .registers 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .line 437
    move v0, p2

    .line 438
    .local v0, "charPos":I
    const/4 v1, 0x0

    .line 440
    .local v1, "sign":C
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_b

    .line 441
    const/16 v1, 0x2d

    .line 442
    neg-long p0, p0

    .line 446
    :cond_b
    :goto_b
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-lez v2, :cond_36

    .line 447
    const-wide/16 v2, 0x64

    div-long v2, p0, v2

    .line 449
    .local v2, "q":J
    const/4 v4, 0x6

    shl-long v4, v2, v4

    const/4 v6, 0x5

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    sub-long v4, p0, v4

    long-to-int v4, v4

    .line 450
    .local v4, "r":I
    move-wide p0, v2

    .line 451
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 452
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_b

    .line 457
    .end local v2    # "q":J
    .end local v4    # "r":I
    :cond_36
    long-to-int v2, p0

    .line 458
    .local v2, "i2":I
    :goto_37
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_59

    .line 459
    div-int/lit8 v3, v2, 0x64

    .line 461
    .local v3, "q2":I
    shl-int/lit8 v4, v3, 0x6

    shl-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 462
    .restart local v4    # "r":I
    move v2, v3

    .line 463
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 464
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_37

    .line 470
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_59
    const v3, 0xcccd

    mul-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0x13

    .line 471
    .restart local v3    # "q2":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 472
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 473
    move v2, v3

    .line 474
    if-nez v2, :cond_59

    .line 476
    if-eqz v1, :cond_77

    .line 477
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p3, v0

    .line 479
    :cond_77
    return-void
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "nm"    # Ljava/lang/String;

    .line 1117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 5
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 1162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1163
    .local v0, "result":Ljava/lang/Long;
    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Long;

    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 1215
    goto :goto_8

    .line 1214
    :catch_7
    move-exception v1

    .line 1216
    :goto_8
    if-eqz v0, :cond_10

    .line 1218
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-object v1

    .line 1219
    :catch_f
    move-exception v1

    .line 1222
    :cond_10
    return-object p1
.end method

.method public static whitelist test-api hashCode(J)I
    .registers 4
    .param p0, "value"    # J

    .line 1066
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api highestOneBit(J)J
    .registers 5
    .param p0, "i"    # J

    .line 1373
    const/4 v0, 0x1

    shr-long v1, p0, v0

    or-long/2addr p0, v1

    .line 1374
    const/4 v1, 0x2

    shr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 1375
    const/4 v1, 0x4

    shr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 1376
    const/16 v1, 0x8

    shr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 1377
    const/16 v1, 0x10

    shr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 1378
    const/16 v1, 0x20

    shr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 1379
    ushr-long v0, p0, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static whitelist test-api lowestOneBit(J)J
    .registers 4
    .param p0, "i"    # J

    .line 1397
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1606
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1620
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api numberOfLeadingZeros(J)I
    .registers 5
    .param p0, "i"    # J

    .line 1423
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 1424
    const/16 v0, 0x40

    return v0

    .line 1425
    :cond_9
    const/4 v0, 0x1

    .line 1426
    .local v0, "n":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    .line 1427
    .local v1, "x":I
    if-nez v1, :cond_14

    add-int/lit8 v0, v0, 0x20

    long-to-int v1, p0

    .line 1428
    :cond_14
    ushr-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_1c

    add-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x10

    .line 1429
    :cond_1c
    ushr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_24

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x8

    .line 1430
    :cond_24
    ushr-int/lit8 v2, v1, 0x1c

    if-nez v2, :cond_2c

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 v1, v1, 0x4

    .line 1431
    :cond_2c
    ushr-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_34

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x2

    .line 1432
    :cond_34
    ushr-int/lit8 v2, v1, 0x1f

    sub-int/2addr v0, v2

    .line 1433
    return v0
.end method

.method public static whitelist test-api numberOfTrailingZeros(J)I
    .registers 6
    .param p0, "i"    # J

    .line 1453
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const/16 v0, 0x40

    return v0

    .line 1454
    :cond_9
    const/16 v0, 0x3f

    .line 1455
    .local v0, "n":I
    long-to-int v1, p0

    .local v1, "y":I
    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x20

    move v2, v1

    goto :goto_17

    :cond_12
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    .line 1456
    .local v2, "x":I
    :goto_17
    shl-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_1e

    add-int/lit8 v0, v0, -0x10

    move v2, v1

    .line 1457
    :cond_1e
    shl-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_25

    add-int/lit8 v0, v0, -0x8

    move v2, v1

    .line 1458
    :cond_25
    shl-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_2c

    add-int/lit8 v0, v0, -0x4

    move v2, v1

    .line 1459
    :cond_2c
    shl-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_33

    add-int/lit8 v0, v0, -0x2

    move v2, v1

    .line 1460
    :cond_33
    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    sub-int v3, v0, v3

    return v3
.end method

.method public static whitelist test-api parseLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 636
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api parseLong(Ljava/lang/String;I)J
    .registers 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 556
    if-eqz p0, :cond_af

    .line 560
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p1, v0, :cond_95

    .line 564
    const/16 v0, 0x24

    if-gt p1, v0, :cond_7b

    .line 569
    const-wide/16 v0, 0x0

    .line 570
    .local v0, "result":J
    const/4 v2, 0x0

    .line 571
    .local v2, "negative":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 572
    .local v4, "len":I
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 576
    .local v5, "limit":J
    if-lez v4, :cond_76

    .line 577
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 578
    .local v7, "firstChar":C
    const/16 v8, 0x30

    if-ge v7, v8, :cond_3f

    .line 579
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2b

    .line 580
    const/4 v2, 0x1

    .line 581
    const-wide/high16 v5, -0x8000000000000000L

    goto :goto_2f

    .line 582
    :cond_2b
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_3a

    .line 585
    :goto_2f
    const/4 v8, 0x1

    if-eq v4, v8, :cond_35

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 586
    :cond_35
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 583
    :cond_3a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 589
    :cond_3f
    :goto_3f
    int-to-long v8, p1

    div-long v8, v5, v8

    .line 590
    .local v8, "multmin":J
    :goto_42
    if-ge v3, v4, :cond_6f

    .line 592
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .local v10, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 593
    .local v3, "digit":I
    if-ltz v3, :cond_6a

    .line 596
    cmp-long v11, v0, v8

    if-ltz v11, :cond_65

    .line 599
    int-to-long v11, p1

    mul-long/2addr v0, v11

    .line 600
    int-to-long v11, v3

    add-long/2addr v11, v5

    cmp-long v11, v0, v11

    if-ltz v11, :cond_60

    .line 603
    int-to-long v11, v3

    sub-long/2addr v0, v11

    move v3, v10

    goto :goto_42

    .line 601
    :cond_60
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 597
    :cond_65
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 594
    :cond_6a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 605
    .end local v7    # "firstChar":C
    .end local v10    # "i":I
    .local v3, "i":I
    :cond_6f
    nop

    .line 608
    if-eqz v2, :cond_74

    move-wide v10, v0

    goto :goto_75

    :cond_74
    neg-long v10, v0

    :goto_75
    return-wide v10

    .line 606
    .end local v8    # "multmin":J
    :cond_76
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 565
    .end local v0    # "result":J
    .end local v2    # "negative":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "limit":J
    :cond_7b
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

    .line 561
    :cond_95
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

    .line 557
    :cond_af
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseUnsignedLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 751
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api parseUnsignedLong(Ljava/lang/String;I)J
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 684
    if-eqz p0, :cond_81

    .line 688
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 689
    .local v0, "len":I
    if-lez v0, :cond_7c

    .line 690
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 691
    .local v2, "firstChar":C
    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6c

    .line 696
    const/16 v3, 0xc

    if-le v0, v3, :cond_67

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1f

    const/16 v3, 0x12

    if-gt v0, v3, :cond_1f

    goto :goto_67

    .line 702
    :cond_1f
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 703
    .local v5, "first":J
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 704
    .local v3, "second":I
    if-ltz v3, :cond_50

    .line 707
    int-to-long v7, p1

    mul-long/2addr v7, v5

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 708
    .local v7, "result":J
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v9

    if-ltz v9, :cond_40

    .line 727
    return-wide v7

    .line 724
    :cond_40
    new-instance v9, Ljava/lang/NumberFormatException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string v1, "String value %s exceeds range of unsigned long."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 705
    .end local v7    # "result":J
    :cond_50
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad digit at end of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    .end local v3    # "second":I
    .end local v5    # "first":J
    :cond_67
    :goto_67
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    return-wide v3

    .line 692
    :cond_6c
    new-instance v3, Ljava/lang/NumberFormatException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 693
    const-string v1, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 730
    .end local v2    # "firstChar":C
    :cond_7c
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 685
    .end local v0    # "len":I
    :cond_81
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api remainderUnsigned(JJ)J
    .registers 7
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 1329
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_d

    cmp-long v0, p2, v0

    if-lez v0, :cond_d

    .line 1330
    rem-long v0, p0, p2

    return-wide v0

    .line 1332
    :cond_d
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_14

    .line 1333
    return-wide p0

    .line 1335
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1336
    invoke-static {p2, p3}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 1335
    return-wide v0
.end method

.method public static whitelist test-api reverse(J)J
    .registers 10
    .param p0, "i"    # J

    .line 1544
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v2, p0, v0

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1545
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v2, p0, v0

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1546
    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long v2, p0, v0

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1547
    const-wide v0, 0xff00ff00ff00ffL

    and-long v2, p0, v0

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1548
    const/16 v0, 0x30

    shl-long v1, p0, v0

    const-wide v3, 0xffff0000L

    and-long v5, p0, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    ushr-long v5, p0, v7

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    ushr-long v3, p0, v0

    or-long p0, v1, v3

    .line 1550
    return-wide p0
.end method

.method public static whitelist test-api reverseBytes(J)J
    .registers 10
    .param p0, "i"    # J

    .line 1577
    const-wide v0, 0xff00ff00ff00ffL

    and-long v2, p0, v0

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1578
    const/16 v0, 0x30

    shl-long v1, p0, v0

    const-wide v3, 0xffff0000L

    and-long v5, p0, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    ushr-long v5, p0, v7

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    ushr-long v3, p0, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static whitelist test-api rotateLeft(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 1505
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api rotateRight(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 1529
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api signum(J)I
    .registers 7
    .param p0, "i"    # J

    .line 1564
    const/16 v0, 0x3f

    shr-long v1, p0, v0

    neg-long v3, p0

    ushr-long/2addr v3, v0

    or-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method static greylist-max-o stringSize(J)I
    .registers 7
    .param p0, "x"    # J

    .line 483
    const-wide/16 v0, 0xa

    .line 484
    .local v0, "p":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    const/16 v3, 0x13

    if-ge v2, v3, :cond_12

    .line 485
    cmp-long v3, p0, v0

    if-gez v3, :cond_c

    .line 486
    return v2

    .line 487
    :cond_c
    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 489
    .end local v2    # "i":I
    :cond_12
    return v3
.end method

.method public static whitelist test-api sum(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1592
    add-long v0, p0, p2

    return-wide v0
.end method

.method public static whitelist test-api toBinaryString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 345
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toHexString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 273
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toOctalString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 312
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(J)Ljava/lang/String;
    .registers 5
    .param p0, "i"    # J

    .line 397
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 398
    const-string v0, "-9223372036854775808"

    return-object v0

    .line 399
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    neg-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_17
    invoke-static {p0, p1}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    .line 400
    .local v0, "size":I
    :goto_1b
    new-array v1, v0, [C

    .line 401
    .local v1, "buf":[C
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->getChars(JI[C)V

    .line 404
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static whitelist test-api toString(JI)Ljava/lang/String;
    .registers 10
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .line 122
    const/4 v0, 0x2

    if-lt p2, v0, :cond_7

    const/16 v0, 0x24

    if-le p2, v0, :cond_9

    .line 123
    :cond_7
    const/16 p2, 0xa

    .line 124
    :cond_9
    const/16 v0, 0xa

    if-ne p2, v0, :cond_12

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_12
    const/16 v0, 0x41

    new-array v0, v0, [C

    .line 127
    .local v0, "buf":[C
    const/16 v1, 0x40

    .line 128
    .local v1, "charPos":I
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 130
    .local v2, "negative":Z
    :goto_21
    if-nez v2, :cond_24

    .line 131
    neg-long p0, p0

    .line 134
    :cond_24
    :goto_24
    neg-int v3, p2

    int-to-long v3, v3

    cmp-long v3, p0, v3

    if-gtz v3, :cond_3b

    .line 135
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "charPos":I
    .local v3, "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    int-to-long v5, p2

    rem-long v5, p0, v5

    neg-long v5, v5

    long-to-int v5, v5

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    .line 136
    int-to-long v4, p2

    div-long/2addr p0, v4

    move v1, v3

    goto :goto_24

    .line 138
    .end local v3    # "charPos":I
    .restart local v1    # "charPos":I
    :cond_3b
    sget-object v3, Ljava/lang/Integer;->digits:[C

    neg-long v4, p0

    long-to-int v4, v4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 140
    if-eqz v2, :cond_4b

    .line 141
    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x2d

    aput-char v3, v0, v1

    .line 144
    :cond_4b
    new-instance v3, Ljava/lang/String;

    rsub-int/lit8 v4, v1, 0x41

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method private static greylist-max-o toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .registers 7
    .param p0, "i"    # J

    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 218
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 220
    :cond_b
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 221
    .local v1, "upper":I
    long-to-int v2, p0

    .line 224
    .local v2, "lower":I
    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 422
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(JI)Ljava/lang/String;
    .registers 9
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 175
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_b
    sparse-switch p2, :sswitch_data_52

    .line 207
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :sswitch_17
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :sswitch_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :sswitch_22
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    .line 197
    .local v0, "quot":J
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    sub-long v2, p0, v2

    .line 198
    .local v2, "rem":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 185
    .end local v0    # "quot":J
    .end local v2    # "rem":J
    :sswitch_41
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :sswitch_46
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :sswitch_4c
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_52
    .sparse-switch
        0x2 -> :sswitch_4c
        0x4 -> :sswitch_46
        0x8 -> :sswitch_41
        0xa -> :sswitch_22
        0x10 -> :sswitch_1d
        0x20 -> :sswitch_17
    .end sparse-switch
.end method

.method static greylist-max-o toUnsignedString0(JI)Ljava/lang/String;
    .registers 12
    .param p0, "val"    # J
    .param p2, "shift"    # I

    .line 355
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 356
    .local v0, "mag":I
    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v0

    div-int/2addr v1, p2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 357
    .local v1, "chars":I
    new-array v2, v1, [C

    .line 359
    .local v2, "buf":[C
    const/4 v7, 0x0

    move-wide v3, p0

    move v5, p2

    move-object v6, v2

    move v8, v1

    invoke-static/range {v3 .. v8}, Ljava/lang/Long;->formatUnsignedLong(JI[CII)I

    .line 362
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static whitelist test-api valueOf(J)Ljava/lang/Long;
    .registers 5
    .param p0, "l"    # J

    .line 841
    const/16 v0, 0x80

    .line 842
    .local v0, "offset":I
    const-wide/16 v1, -0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_16

    const-wide/16 v1, 0x7f

    cmp-long v1, p0, v1

    if-gtz v1, :cond_16

    .line 843
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    long-to-int v2, p0

    add-int/lit16 v2, v2, 0x80

    aget-object v1, v1, v2

    return-object v1

    .line 845
    :cond_16
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 808
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 781
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 3

    .line 979
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Long;)I
    .registers 6
    .param p1, "anotherLong"    # Ljava/lang/Long;

    .line 1239
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 55
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 1023
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1080
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1081
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 1083
    :cond_14
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 1014
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1054
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 997
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 1005
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 3

    .line 988
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1037
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
