.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 594
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 595
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
    .line 608
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 609
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Double;->value:D

    .line 610
    return-void
.end method

.method public static compare(DD)I
    .registers 12
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1001
    cmpg-double v6, p0, p2

    if-gez v6, :cond_7

    .line 1002
    return v4

    .line 1003
    :cond_7
    cmpl-double v6, p0, p2

    if-lez v6, :cond_c

    .line 1004
    return v5

    .line 1007
    :cond_c
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1008
    .local v2, "thisBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1010
    .local v0, "anotherBits":J
    cmp-long v6, v2, v0

    if-nez v6, :cond_1a

    const/4 v4, 0x0

    :cond_19
    :goto_19
    return v4

    .line 1011
    :cond_1a
    cmp-long v6, v2, v0

    if-ltz v6, :cond_19

    move v4, v5

    .line 1012
    goto :goto_19
.end method

.method public static doubleToLongBits(D)J
    .registers 8
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 837
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 840
    .local v0, "result":J
    and-long v2, v0, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 842
    const-wide v2, 0xfffffffffffffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 843
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 844
    :cond_1a
    return-wide v0
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static hashCode(D)I
    .registers 6
    .param p0, "value"    # D

    .prologue
    .line 755
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 756
    .local v0, "bits":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static isFinite(D)Z
    .registers 6
    .param p0, "d"    # D

    .prologue
    .line 577
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isInfinite(D)Z
    .registers 6
    .param p0, "v"    # D

    .prologue
    const/4 v0, 0x1

    .line 563
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p0, v2

    if-eqz v1, :cond_d

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p0, v2

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(D)Z
    .registers 4
    .param p0, "v"    # D

    .prologue
    .line 551
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1040
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1054
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1026
    add-double v0, p0, p2

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .registers 12
    .param p0, "d"    # D

    .prologue
    .line 288
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-nez v5, :cond_b

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 293
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v0, "answer":Ljava/lang/StringBuilder;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_24

    .line 296
    const-string/jumbo v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_24
    const-string/jumbo v5, "0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 302
    const-wide/16 v6, 0x0

    cmpl-double v5, p0, v6

    if-nez v5, :cond_3f

    .line 303
    const-string/jumbo v5, "0.0p0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 305
    :cond_3f
    const-wide/high16 v6, 0x10000000000000L

    cmpg-double v5, p0, v6

    if-gez v5, :cond_83

    const/4 v4, 0x1

    .line 310
    .local v4, "subnormal":Z
    :goto_46
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 311
    const-wide v8, 0xfffffffffffffL

    .line 310
    and-long/2addr v6, v8

    .line 312
    const-wide/high16 v8, 0x1000000000000000L

    .line 310
    or-long v2, v6, v8

    .line 316
    .local v2, "signifBits":J
    if-eqz v4, :cond_85

    const-string/jumbo v5, "0."

    :goto_59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "signif":Ljava/lang/String;
    const-string/jumbo v5, "0000000000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 324
    const-string/jumbo v5, "0"

    .line 323
    :goto_73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const/16 v5, 0x70

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    if-eqz v4, :cond_94

    .line 333
    const/16 v5, -0x3fe

    .line 332
    :goto_7f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 305
    .end local v1    # "signif":Ljava/lang/String;
    .end local v2    # "signifBits":J
    .end local v4    # "subnormal":Z
    :cond_83
    const/4 v4, 0x0

    .restart local v4    # "subnormal":Z
    goto :goto_46

    .line 316
    .restart local v2    # "signifBits":J
    :cond_85
    const-string/jumbo v5, "1."

    goto :goto_59

    .line 325
    .restart local v1    # "signif":Ljava/lang/String;
    :cond_89
    const-string/jumbo v5, "0{1,12}$"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_73

    .line 334
    :cond_94
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v5

    goto :goto_7f
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 205
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->toJavaFormatString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 520
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 658
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .registers 6
    .param p1, "anotherDouble"    # Ljava/lang/Double;

    .prologue
    .line 979
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 948
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 717
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 799
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_18

    .line 800
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 801
    iget-wide v4, p0, Ljava/lang/Double;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 800
    cmp-long v1, v2, v4

    if-nez v1, :cond_18

    const/4 v0, 0x1

    .line 799
    :cond_18
    return v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 708
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 743
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 683
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    .prologue
    .line 632
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    .prologue
    .line 620
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 695
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 671
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 645
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
