.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 518
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 519
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 508
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 509
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 533
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 534
    return-void
.end method

.method public static compare(FF)I
    .registers 7
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 908
    cmpg-float v4, p0, p1

    if-gez v4, :cond_7

    .line 909
    return v2

    .line 910
    :cond_7
    cmpl-float v4, p0, p1

    if-lez v4, :cond_c

    .line 911
    return v3

    .line 914
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 915
    .local v1, "thisBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 917
    .local v0, "anotherBits":I
    if-ne v1, v0, :cond_18

    const/4 v2, 0x0

    :cond_17
    :goto_17
    return v2

    .line 918
    :cond_18
    if-lt v1, v0, :cond_17

    move v2, v3

    .line 919
    goto :goto_17
.end method

.method public static floatToIntBits(F)I
    .registers 4
    .param p0, "value"    # F

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 745
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 748
    .local v0, "result":I
    and-int v1, v0, v2

    if-ne v1, v2, :cond_12

    .line 750
    const v1, 0x7fffff

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 751
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 752
    :cond_12
    return v0
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static hashCode(F)I
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 665
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isFinite(F)Z
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 491
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isInfinite(F)Z
    .registers 3
    .param p0, "v"    # F

    .prologue
    const/4 v0, 0x1

    .line 476
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_d

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(F)Z
    .registers 2
    .param p0, "v"    # F

    .prologue
    .line 464
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 947
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 961
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static sum(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 933
    add-float v0, p0, p1

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .registers 5
    .param p0, "f"    # F

    .prologue
    .line 285
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    .line 286
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_25

    .line 290
    float-to-double v2, p0

    .line 292
    const/16 v1, -0x380

    .line 290
    invoke-static {v2, v3, v1}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "p-1022$"

    const-string/jumbo v2, "p-126"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    .end local v0    # "s":Ljava/lang/String;
    :cond_25
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 207
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->toJavaFormatString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 434
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/lang/Float;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 581
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .registers 4
    .param p1, "anotherFloat"    # Ljava/lang/Float;

    .prologue
    .line 886
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 853
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 639
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 709
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_16

    .line 710
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p0, Ljava/lang/Float;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    .line 709
    :cond_16
    return v0
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 627
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    .prologue
    .line 556
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    .prologue
    .line 544
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 618
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 594
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
