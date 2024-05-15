.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x8

.field public static final whitelist test-api MAX_EXPONENT:I = 0x3ff

.field public static final whitelist test-api MAX_VALUE:D = 1.7976931348623157E308

.field public static final whitelist test-api MIN_EXPONENT:I = -0x3fe

.field public static final whitelist test-api MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final whitelist test-api MIN_VALUE:D = 4.9E-324

.field public static final whitelist test-api NEGATIVE_INFINITY:D = -Infinity

.field public static final whitelist test-api NaN:D = NaN

.field public static final whitelist test-api POSITIVE_INFINITY:D = Infinity

.field public static final whitelist test-api SIZE:I = 0x40

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final greylist-max-p value:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    const-string v0, "double"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 3
    .param p1, "value"    # D

    .line 592
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 593
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 594
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

    .line 607
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 608
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Double;->value:D

    .line 609
    return-void
.end method

.method public static whitelist test-api compare(DD)I
    .registers 11
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .line 1000
    cmpg-double v0, p0, p2

    const/4 v1, -0x1

    if-gez v0, :cond_6

    .line 1001
    return v1

    .line 1002
    :cond_6
    cmpl-double v0, p0, p2

    const/4 v2, 0x1

    if-lez v0, :cond_c

    .line 1003
    return v2

    .line 1006
    :cond_c
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 1007
    .local v3, "thisBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 1009
    .local v5, "anotherBits":J
    cmp-long v0, v3, v5

    if-nez v0, :cond_1a

    const/4 v1, 0x0

    goto :goto_20

    .line 1010
    :cond_1a
    cmp-long v0, v3, v5

    if-gez v0, :cond_1f

    goto :goto_20

    .line 1011
    :cond_1f
    move v1, v2

    .line 1009
    :goto_20
    return v1
.end method

.method public static whitelist test-api doubleToLongBits(D)J
    .registers 8
    .param p0, "value"    # D

    .line 836
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 839
    .local v0, "result":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v4, v0, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1a

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 842
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 843
    :cond_1a
    return-wide v0
.end method

.method public static native whitelist test-api doubleToRawLongBits(D)J
.end method

.method public static whitelist test-api hashCode(D)I
    .registers 6
    .param p0, "value"    # D

    .line 754
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 755
    .local v0, "bits":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static whitelist test-api isFinite(D)Z
    .registers 6
    .param p0, "d"    # D

    .line 576
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist test-api isInfinite(D)Z
    .registers 4
    .param p0, "v"    # D

    .line 562
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static whitelist test-api isNaN(D)Z
    .registers 3
    .param p0, "v"    # D

    .line 550
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static native whitelist test-api longBitsToDouble(J)D
.end method

.method public static whitelist test-api max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1039
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1053
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api sum(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1025
    add-double v0, p0, p2

    return-wide v0
.end method

.method public static whitelist test-api toHexString(D)Ljava/lang/String;
    .registers 9
    .param p0, "d"    # D

    .line 287
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_b

    .line 289
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v0, "answer":Ljava/lang/StringBuilder;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_23

    .line 295
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_23
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 301
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_38

    .line 302
    const-string v1, "0.0p0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 304
    :cond_38
    const-wide/high16 v1, 0x10000000000000L

    cmpg-double v1, p0, v1

    if-gez v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 309
    .local v1, "subnormal":Z
    :goto_41
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x1000000000000000L

    or-long/2addr v2, v4

    .line 315
    .local v2, "signifBits":J
    if-eqz v1, :cond_53

    const-string v4, "0."

    goto :goto_55

    :cond_53
    const-string v4, "1."

    :goto_55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "signif":Ljava/lang/String;
    const-string v5, "0000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 323
    const-string v5, "0"

    goto :goto_76

    .line 324
    :cond_6e
    const-string v5, "0{1,12}$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    :goto_76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v5, 0x70

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    if-eqz v1, :cond_83

    .line 332
    const/16 v5, -0x3fe

    goto :goto_87

    .line 333
    :cond_83
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v5

    .line 331
    :goto_87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .end local v1    # "subnormal":Z
    .end local v2    # "signifBits":J
    .end local v4    # "signif":Ljava/lang/String;
    :goto_8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api toString(D)Ljava/lang/String;
    .registers 3
    .param p0, "d"    # D

    .line 204
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->toJavaFormatString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(D)Ljava/lang/Double;
    .registers 3
    .param p0, "d"    # D

    .line 519
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 3

    .line 657
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Double;)I
    .registers 6
    .param p1, "anotherDouble"    # Ljava/lang/Double;

    .line 978
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 49
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 716
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 798
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    iget-wide v0, v0, Ljava/lang/Double;->value:D

    .line 799
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/lang/Double;->value:D

    .line 800
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 798
    :goto_1a
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 707
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 742
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 682
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public whitelist test-api isInfinite()Z
    .registers 3

    .line 631
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNaN()Z
    .registers 3

    .line 619
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 694
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 3

    .line 670
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 644
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
