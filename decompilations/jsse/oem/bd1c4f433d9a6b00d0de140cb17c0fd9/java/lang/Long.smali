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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, [J

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 55
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 949
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 950
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 966
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Long;->value:J

    .line 967
    return-void
.end method

.method public static bitCount(J)I
    .registers 8
    .param p0, "i"    # J

    .prologue
    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    .line 1471
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 1472
    and-long v0, p0, v4

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    add-long p0, v0, v2

    .line 1473
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    add-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long p0, v0, v2

    .line 1474
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1475
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1476
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1477
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static compare(JJ)I
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1253
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static compareUnsigned(JJ)I
    .registers 8
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 1269
    add-long v0, p0, v2

    add-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 11
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 888
    const/16 v5, 0xa

    .line 889
    .local v5, "radix":I
    const/4 v3, 0x0

    .line 890
    .local v3, "index":I
    const/4 v4, 0x0

    .line 893
    .local v4, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_14

    .line 894
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Zero length string"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 895
    :cond_14
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 897
    .local v2, "firstChar":C
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_4f

    .line 898
    const/4 v4, 0x1

    .line 899
    const/4 v3, 0x1

    .line 904
    :cond_1e
    :goto_1e
    const-string/jumbo v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_30

    const-string/jumbo v7, "0X"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 905
    :cond_30
    add-int/lit8 v3, v3, 0x2

    .line 906
    const/16 v5, 0x10

    .line 917
    :cond_34
    :goto_34
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_46

    const-string/jumbo v7, "+"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 918
    :cond_46
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Sign character in wrong position"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 900
    :cond_4f
    const/16 v7, 0x2b

    if-ne v2, v7, :cond_1e

    .line 901
    const/4 v3, 0x1

    goto :goto_1e

    .line 908
    :cond_55
    const-string/jumbo v7, "#"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 909
    add-int/lit8 v3, v3, 0x1

    .line 910
    const/16 v5, 0x10

    goto :goto_34

    .line 912
    :cond_63
    const-string/jumbo v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_34

    .line 913
    add-int/lit8 v3, v3, 0x1

    .line 914
    const/16 v5, 0x8

    goto :goto_34

    .line 921
    :cond_79
    :try_start_79
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v6

    .line 922
    .local v6, "result":Ljava/lang/Long;
    if-eqz v4, :cond_8c

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_8b} :catch_8d

    move-result-object v6

    .line 931
    :cond_8c
    :goto_8c
    return-object v6

    .line 923
    .end local v6    # "result":Ljava/lang/Long;
    :catch_8d
    move-exception v1

    .line 927
    .local v1, "e":Ljava/lang/NumberFormatException;
    if-eqz v4, :cond_ad

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "constant":Ljava/lang/String;
    :goto_a8
    invoke-static {v0, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Long;
    goto :goto_8c

    .line 928
    .end local v0    # "constant":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Long;
    :cond_ad
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "constant":Ljava/lang/String;
    goto :goto_a8
.end method

.method public static divideUnsigned(JJ)J
    .registers 8
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1292
    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 1295
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gez v2, :cond_d

    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v0, 0x1

    goto :goto_c

    .line 1298
    :cond_10
    cmp-long v0, p0, v0

    if-lez v0, :cond_17

    .line 1299
    div-long v0, p0, p2

    return-wide v0

    .line 1307
    :cond_17
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1308
    invoke-static {p2, p3}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1307
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static formatUnsignedLong(JI[CII)I
    .registers 12
    .param p0, "val"    # J
    .param p2, "shift"    # I
    .param p3, "buf"    # [C
    .param p4, "offset"    # I
    .param p5, "len"    # I

    .prologue
    .line 373
    move v0, p5

    .line 374
    .local v0, "charPos":I
    const/4 v3, 0x1

    shl-int v2, v3, p2

    .line 375
    .local v2, "radix":I
    add-int/lit8 v1, v2, -0x1

    .line 377
    .local v1, "mask":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    add-int v3, p4, v0

    sget-object v4, Ljava/lang/Integer;->digits:[C

    long-to-int v5, p0

    and-int/2addr v5, v1

    aget-char v4, v4, v5

    aput-char v4, p3, v3

    .line 378
    ushr-long/2addr p0, p2

    .line 379
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-eqz v3, :cond_1b

    if-gtz v0, :cond_6

    .line 381
    :cond_1b
    return v0
.end method

.method static getChars(JI[C)V
    .registers 16
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 433
    move v0, p2

    .line 434
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 436
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_b

    .line 437
    const/16 v6, 0x2d

    .line 438
    neg-long p0, p0

    .line 442
    :cond_b
    :goto_b
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_36

    .line 443
    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    .line 445
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    .line 446
    .local v5, "r":I
    move-wide p0, v2

    .line 447
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 448
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_b

    .line 453
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_36
    long-to-int v1, p0

    .line 454
    .local v1, "i2":I
    :goto_37
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_59

    .line 455
    div-int/lit8 v4, v1, 0x64

    .line 457
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 458
    .restart local v5    # "r":I
    move v1, v4

    .line 459
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 460
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_37

    .line 466
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_59
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 467
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 468
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Ljava/lang/Integer;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 469
    move v1, v4

    .line 470
    if-nez v4, :cond_59

    .line 472
    if-eqz v6, :cond_77

    .line 473
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 475
    :cond_77
    return-void
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "nm"    # Ljava/lang/String;

    .prologue
    .line 1113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # J

    .prologue
    const/4 v1, 0x0

    .line 1158
    invoke-static {p0, v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1159
    .local v0, "result":Ljava/lang/Long;
    if-nez v0, :cond_b

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/Long;
    :cond_b
    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Long;

    .prologue
    .line 1207
    const/4 v2, 0x0

    .line 1209
    .local v2, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v2

    .line 1212
    .end local v2    # "v":Ljava/lang/String;
    :goto_5
    if-eqz v2, :cond_f

    .line 1214
    :try_start_7
    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_e

    move-result-object v3

    return-object v3

    .line 1210
    .restart local v2    # "v":Ljava/lang/String;
    :catch_c
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_5

    .line 1215
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "v":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 1218
    :cond_f
    return-object p1
.end method

.method public static hashCode(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 1062
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static highestOneBit(J)J
    .registers 6
    .param p0, "i"    # J

    .prologue
    const/4 v2, 0x1

    .line 1369
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 1370
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 1371
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 1372
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 1373
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 1374
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 1375
    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static lowestOneBit(J)J
    .registers 4
    .param p0, "i"    # J

    .prologue
    .line 1393
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1602
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1616
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .registers 6
    .param p0, "i"    # J

    .prologue
    .line 1419
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_9

    .line 1420
    const/16 v2, 0x40

    return v2

    .line 1421
    :cond_9
    const/4 v0, 0x1

    .line 1422
    .local v0, "n":I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v1, v2

    .line 1423
    .local v1, "x":I
    if-nez v1, :cond_14

    const/16 v0, 0x21

    long-to-int v1, p0

    .line 1424
    :cond_14
    ushr-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_1c

    add-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x10

    .line 1425
    :cond_1c
    ushr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_24

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x8

    .line 1426
    :cond_24
    ushr-int/lit8 v2, v1, 0x1c

    if-nez v2, :cond_2c

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 v1, v1, 0x4

    .line 1427
    :cond_2c
    ushr-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_34

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x2

    .line 1428
    :cond_34
    ushr-int/lit8 v2, v1, 0x1f

    sub-int/2addr v0, v2

    .line 1429
    return v0
.end method

.method public static numberOfTrailingZeros(J)I
    .registers 8
    .param p0, "i"    # J

    .prologue
    .line 1449
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_9

    const/16 v3, 0x40

    return v3

    .line 1450
    :cond_9
    const/16 v0, 0x3f

    .line 1451
    .local v0, "n":I
    long-to-int v2, p0

    .local v2, "y":I
    if-eqz v2, :cond_34

    const/16 v0, 0x1f

    move v1, v2

    .line 1452
    .local v1, "x":I
    :goto_11
    shl-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, -0x10

    move v1, v2

    .line 1453
    :cond_18
    shl-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1f

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    .line 1454
    :cond_1f
    shl-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_26

    add-int/lit8 v0, v0, -0x4

    move v1, v2

    .line 1455
    :cond_26
    shl-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2d

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    .line 1456
    :cond_2d
    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    sub-int v3, v0, v3

    return v3

    .line 1451
    .end local v1    # "x":I
    :cond_34
    const/16 v3, 0x20

    ushr-long v4, p0, v3

    long-to-int v1, v4

    .restart local v1    # "x":I
    goto :goto_11
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 632
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .registers 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 552
    if-nez p0, :cond_b

    .line 553
    new-instance v14, Ljava/lang/NumberFormatException;

    const-string/jumbo v15, "null"

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 556
    :cond_b
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ge v0, v14, :cond_33

    .line 557
    new-instance v14, Ljava/lang/NumberFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radix "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 558
    const-string/jumbo v16, " less than Character.MIN_RADIX"

    .line 557
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 560
    :cond_33
    const/16 v14, 0x24

    move/from16 v0, p1

    if-le v0, v14, :cond_5c

    .line 561
    new-instance v14, Ljava/lang/NumberFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radix "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 562
    const-string/jumbo v16, " greater than Character.MAX_RADIX"

    .line 561
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 565
    :cond_5c
    const-wide/16 v12, 0x0

    .line 566
    .local v12, "result":J
    const/4 v7, 0x0

    .line 567
    .local v7, "negative":Z
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 568
    .local v6, "len":I
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 572
    .local v8, "limit":J
    if-lez v6, :cond_c8

    .line 573
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 574
    .local v3, "firstChar":C
    const/16 v14, 0x30

    if-ge v3, v14, :cond_8f

    .line 575
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_85

    .line 576
    const/4 v7, 0x1

    .line 577
    const-wide/high16 v8, -0x8000000000000000L

    .line 581
    :cond_7d
    const/4 v14, 0x1

    if-ne v6, v14, :cond_8e

    .line 582
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 578
    :cond_85
    const/16 v14, 0x2b

    if-eq v3, v14, :cond_7d

    .line 579
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 583
    :cond_8e
    const/4 v4, 0x1

    .line 585
    :cond_8f
    move/from16 v0, p1

    int-to-long v14, v0

    div-long v10, v8, v14

    .local v10, "multmin":J
    move v5, v4

    .line 586
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_95
    if-ge v5, v6, :cond_cd

    .line 588
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 589
    .local v2, "digit":I
    if-gez v2, :cond_ac

    .line 590
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 592
    :cond_ac
    cmp-long v14, v12, v10

    if-gez v14, :cond_b5

    .line 593
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 595
    :cond_b5
    move/from16 v0, p1

    int-to-long v14, v0

    mul-long/2addr v12, v14

    .line 596
    int-to-long v14, v2

    add-long/2addr v14, v8

    cmp-long v14, v12, v14

    if-gez v14, :cond_c4

    .line 597
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 599
    :cond_c4
    int-to-long v14, v2

    sub-long/2addr v12, v14

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_95

    .line 602
    .end local v2    # "digit":I
    .end local v3    # "firstChar":C
    .end local v5    # "i":I
    .end local v10    # "multmin":J
    .restart local v4    # "i":I
    :cond_c8
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v14

    throw v14

    .line 604
    .end local v4    # "i":I
    .restart local v3    # "firstChar":C
    .restart local v5    # "i":I
    .restart local v10    # "multmin":J
    :cond_cd
    if-eqz v7, :cond_d0

    .end local v12    # "result":J
    :goto_cf
    return-wide v12

    .restart local v12    # "result":J
    :cond_d0
    neg-long v12, v12

    goto :goto_cf
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 747
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 680
    if-nez p0, :cond_d

    .line 681
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "null"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 684
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 685
    .local v3, "len":I
    if-lez v3, :cond_8a

    .line 686
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 687
    .local v2, "firstChar":C
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2c

    .line 688
    new-instance v7, Ljava/lang/NumberFormatException;

    .line 689
    const-string/jumbo v8, "Illegal leading minus sign on unsigned string %s."

    new-array v9, v13, [Ljava/lang/Object;

    .line 690
    aput-object p0, v9, v12

    .line 689
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 688
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 692
    :cond_2c
    const/16 v7, 0xc

    if-le v3, v7, :cond_38

    .line 693
    const/16 v7, 0xa

    if-ne p1, v7, :cond_3d

    const/16 v7, 0x12

    if-gt v3, v7, :cond_3d

    .line 694
    :cond_38
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    return-wide v8

    .line 698
    :cond_3d
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 699
    .local v0, "first":J
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 700
    .local v6, "second":I
    if-gez v6, :cond_6d

    .line 701
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad digit at end of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 703
    :cond_6d
    int-to-long v8, p1

    mul-long/2addr v8, v0

    int-to-long v10, v6

    add-long v4, v8, v10

    .line 704
    .local v4, "result":J
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-gez v7, :cond_89

    .line 720
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "String value %s exceeds range of unsigned long."

    new-array v9, v13, [Ljava/lang/Object;

    .line 721
    aput-object p0, v9, v12

    .line 720
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 723
    :cond_89
    return-wide v4

    .line 726
    .end local v0    # "first":J
    .end local v2    # "firstChar":C
    .end local v4    # "result":J
    .end local v6    # "second":I
    :cond_8a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7
.end method

.method public static remainderUnsigned(JJ)J
    .registers 8
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1325
    cmp-long v0, p0, v2

    if-lez v0, :cond_d

    cmp-long v0, p2, v2

    if-lez v0, :cond_d

    .line 1326
    rem-long v0, p0, p2

    return-wide v0

    .line 1328
    :cond_d
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_14

    .line 1329
    return-wide p0

    .line 1331
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1332
    invoke-static {p2, p3}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1331
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static reverse(J)J
    .registers 12
    .param p0, "i"    # J

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 1540
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, p0

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, v4

    or-long p0, v0, v2

    .line 1541
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, p0

    shl-long/2addr v0, v6

    ushr-long v2, p0, v6

    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, v4

    or-long p0, v0, v2

    .line 1542
    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, p0

    shl-long/2addr v0, v7

    ushr-long v2, p0, v7

    const-wide v4, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v4

    or-long p0, v0, v2

    .line 1543
    const-wide v0, 0xff00ff00ff00ffL

    and-long/2addr v0, p0

    shl-long/2addr v0, v8

    ushr-long v2, p0, v8

    const-wide v4, 0xff00ff00ff00ffL

    and-long/2addr v2, v4

    or-long p0, v0, v2

    .line 1544
    const/16 v0, 0x30

    shl-long v0, p0, v0

    const-wide v2, 0xffff0000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v9

    or-long/2addr v0, v2

    .line 1545
    ushr-long v2, p0, v9

    const-wide v4, 0xffff0000L

    and-long/2addr v2, v4

    .line 1544
    or-long/2addr v0, v2

    .line 1545
    const/16 v2, 0x30

    ushr-long v2, p0, v2

    .line 1544
    or-long p0, v0, v2

    .line 1546
    return-wide p0
.end method

.method public static reverseBytes(J)J
    .registers 12
    .param p0, "i"    # J

    .prologue
    const-wide v8, 0xff00ff00ff00ffL

    const-wide v6, 0xffff0000L

    const/16 v5, 0x30

    const/16 v4, 0x10

    const/16 v2, 0x8

    .line 1573
    and-long v0, p0, v8

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    and-long/2addr v2, v8

    or-long p0, v0, v2

    .line 1574
    shl-long v0, p0, v5

    and-long v2, p0, v6

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1575
    ushr-long v2, p0, v4

    and-long/2addr v2, v6

    .line 1574
    or-long/2addr v0, v2

    .line 1575
    ushr-long v2, p0, v5

    .line 1574
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .prologue
    .line 1501
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .prologue
    .line 1525
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .registers 8
    .param p0, "i"    # J

    .prologue
    const/16 v4, 0x3f

    .line 1560
    shr-long v0, p0, v4

    neg-long v2, p0

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static stringSize(J)I
    .registers 10
    .param p0, "x"    # J

    .prologue
    const/16 v6, 0x13

    .line 479
    const-wide/16 v2, 0xa

    .line 480
    .local v2, "p":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_5
    if-ge v0, v6, :cond_12

    .line 481
    cmp-long v1, p0, v2

    if-gez v1, :cond_c

    .line 482
    return v0

    .line 483
    :cond_c
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 485
    :cond_12
    return v6
.end method

.method public static sum(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1588
    add-long v0, p0, p2

    return-wide v0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # J

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # J

    .prologue
    .line 273
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # J

    .prologue
    .line 312
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 6
    .param p0, "i"    # J

    .prologue
    .line 395
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_a

    .line 396
    const-string/jumbo v2, "-9223372036854775808"

    return-object v2

    .line 397
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_22

    neg-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 398
    .local v1, "size":I
    :goto_17
    new-array v0, v1, [C

    .line 399
    .local v0, "buf":[C
    invoke-static {p0, p1, v1, v0}, Ljava/lang/Long;->getChars(JI[C)V

    .line 400
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 397
    .end local v0    # "buf":[C
    .end local v1    # "size":I
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/Long;->stringSize(J)I

    move-result v1

    .restart local v1    # "size":I
    goto :goto_17
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 11
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .prologue
    .line 122
    const/4 v4, 0x2

    if-lt p2, v4, :cond_7

    const/16 v4, 0x24

    if-le p2, v4, :cond_9

    .line 123
    :cond_7
    const/16 p2, 0xa

    .line 124
    :cond_9
    const/16 v4, 0xa

    if-ne p2, v4, :cond_12

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 126
    :cond_12
    const/16 v4, 0x41

    new-array v0, v4, [C

    .line 127
    .local v0, "buf":[C
    const/16 v1, 0x40

    .line 128
    .local v1, "charPos":I
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_3a

    const/4 v3, 0x1

    .line 130
    .local v3, "negative":Z
    :goto_1f
    if-nez v3, :cond_38

    .line 131
    neg-long p0, p0

    move v2, v1

    .line 134
    .end local v1    # "charPos":I
    .local v2, "charPos":I
    :goto_23
    neg-int v4, p2

    int-to-long v4, v4

    cmp-long v4, p0, v4

    if-gtz v4, :cond_3c

    .line 135
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    int-to-long v6, p2

    rem-long v6, p0, v6

    neg-long v6, v6

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 136
    int-to-long v4, p2

    div-long/2addr p0, v4

    :cond_38
    move v2, v1

    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    goto :goto_23

    .line 128
    .end local v2    # "charPos":I
    .end local v3    # "negative":Z
    .restart local v1    # "charPos":I
    :cond_3a
    const/4 v3, 0x0

    .restart local v3    # "negative":Z
    goto :goto_1f

    .line 138
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_3c
    sget-object v4, Ljava/lang/Integer;->digits:[C

    neg-long v6, p0

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 140
    if-eqz v3, :cond_54

    .line 141
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    const/16 v4, 0x2d

    aput-char v4, v0, v1

    .line 144
    :goto_4c
    new-instance v4, Ljava/lang/String;

    rsub-int/lit8 v5, v1, 0x41

    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_54
    move v1, v2

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    goto :goto_4c
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .registers 8
    .param p0, "i"    # J

    .prologue
    const/16 v4, 0x20

    .line 217
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_d

    .line 218
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 220
    :cond_d
    ushr-long v2, p0, v4

    long-to-int v1, v2

    .line 221
    .local v1, "upper":I
    long-to-int v0, p0

    .line 224
    .local v0, "lower":I
    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static toUnsignedString(J)Ljava/lang/String;
    .registers 4
    .param p0, "i"    # J

    .prologue
    .line 418
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(JI)Ljava/lang/String;
    .registers 11
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .prologue
    .line 174
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-ltz v4, :cond_b

    .line 175
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 177
    :cond_b
    sparse-switch p2, :sswitch_data_54

    .line 207
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    :sswitch_17
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 182
    :sswitch_1c
    const/4 v4, 0x2

    invoke-static {p0, p1, v4}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 185
    :sswitch_22
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 196
    :sswitch_27
    const/4 v4, 0x1

    ushr-long v4, p0, v4

    const-wide/16 v6, 0x5

    div-long v0, v4, v6

    .line 197
    .local v0, "quot":J
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v0

    sub-long v2, p0, v4

    .line 198
    .local v2, "rem":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 201
    .end local v0    # "quot":J
    .end local v2    # "rem":J
    :sswitch_49
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 204
    :sswitch_4e
    const/4 v4, 0x5

    invoke-static {p0, p1, v4}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 177
    :sswitch_data_54
    .sparse-switch
        0x2 -> :sswitch_17
        0x4 -> :sswitch_1c
        0x8 -> :sswitch_22
        0xa -> :sswitch_27
        0x10 -> :sswitch_49
        0x20 -> :sswitch_4e
    .end sparse-switch
.end method

.method static toUnsignedString0(JI)Ljava/lang/String;
    .registers 11
    .param p0, "val"    # J
    .param p2, "shift"    # I

    .prologue
    .line 355
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v6, v0, 0x40

    .line 356
    .local v6, "mag":I
    add-int/lit8 v0, p2, -0x1

    add-int/2addr v0, v6

    div-int/2addr v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 357
    .local v5, "chars":I
    new-array v3, v5, [C

    .line 359
    .local v3, "buf":[C
    const/4 v4, 0x0

    move-wide v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Ljava/lang/Long;->formatUnsignedLong(JI[CII)I

    .line 360
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 6
    .param p0, "l"    # J

    .prologue
    .line 837
    const/16 v0, 0x80

    .line 838
    .local v0, "offset":I
    const-wide/16 v2, -0x80

    cmp-long v1, p0, v2

    if-ltz v1, :cond_16

    const-wide/16 v2, 0x7f

    cmp-long v1, p0, v2

    if-gtz v1, :cond_16

    .line 839
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    long-to-int v2, p0

    add-int/lit16 v2, v2, 0x80

    aget-object v1, v1, v2

    return-object v1

    .line 841
    :cond_16
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 804
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 975
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .registers 6
    .param p1, "anotherLong"    # Ljava/lang/Long;

    .prologue
    .line 1235
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1221
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 1019
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1076
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_13

    .line 1077
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 1079
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_13
    return v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 1010
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1050
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 993
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 1001
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 984
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1033
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
