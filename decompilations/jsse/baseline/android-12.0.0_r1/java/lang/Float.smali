.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x4

.field public static final whitelist test-api MAX_EXPONENT:I = 0x7f

.field public static final whitelist test-api MAX_VALUE:F = 3.4028235E38f

.field public static final whitelist test-api MIN_EXPONENT:I = -0x7e

.field public static final whitelist test-api MIN_NORMAL:F = 1.17549435E-38f

.field public static final whitelist test-api MIN_VALUE:F = 1.4E-45f

.field public static final whitelist test-api NEGATIVE_INFINITY:F = -Infinityf

.field public static final whitelist test-api NaN:F = NaNf

.field public static final whitelist test-api POSITIVE_INFINITY:F = Infinityf

.field public static final whitelist test-api SIZE:I = 0x20

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final greylist-max-p value:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    const-string v0, "float"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .line 516
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 517
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 518
    return-void
.end method

.method public constructor whitelist test-api <init>(F)V
    .registers 2
    .param p1, "value"    # F

    .line 506
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 507
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 508
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

    .line 531
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 532
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 533
    return-void
.end method

.method public static whitelist test-api compare(FF)I
    .registers 6
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .line 907
    cmpg-float v0, p0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_6

    .line 908
    return v1

    .line 909
    :cond_6
    cmpl-float v0, p0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_c

    .line 910
    return v2

    .line 913
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 914
    .local v0, "thisBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 916
    .local v3, "anotherBits":I
    if-ne v0, v3, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    .line 917
    :cond_18
    if-ge v0, v3, :cond_1b

    goto :goto_1c

    .line 918
    :cond_1b
    move v1, v2

    .line 916
    :goto_1c
    return v1
.end method

.method public static whitelist test-api floatToIntBits(F)I
    .registers 4
    .param p0, "value"    # F

    .line 744
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 747
    .local v0, "result":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int v2, v0, v1

    if-ne v2, v1, :cond_12

    const v1, 0x7fffff

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 750
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 751
    :cond_12
    return v0
.end method

.method public static native whitelist test-api floatToRawIntBits(F)I
.end method

.method public static whitelist test-api hashCode(F)I
    .registers 2
    .param p0, "value"    # F

    .line 664
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static native whitelist test-api intBitsToFloat(I)F
.end method

.method public static whitelist test-api isFinite(F)Z
    .registers 3
    .param p0, "f"    # F

    .line 490
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static whitelist test-api isInfinite(F)Z
    .registers 2
    .param p0, "v"    # F

    .line 475
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_f

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

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

.method public static whitelist test-api isNaN(F)Z
    .registers 2
    .param p0, "v"    # F

    .line 463
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 946
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 960
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 451
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api sum(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 932
    add-float v0, p0, p1

    return v0
.end method

.method public static whitelist test-api toHexString(F)Ljava/lang/String;
    .registers 4
    .param p0, "f"    # F

    .line 284
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_23

    .line 289
    float-to-double v0, p0

    const/16 v2, -0x380

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "s":Ljava/lang/String;
    const-string v1, "p-1022$"

    const-string v2, "p-126"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "s":Ljava/lang/String;
    :cond_23
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 206
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->toJavaFormatString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(F)Ljava/lang/Float;
    .registers 2
    .param p0, "f"    # F

    .line 433
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/Float;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 580
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Float;)I
    .registers 4
    .param p1, "anotherFloat"    # Ljava/lang/Float;

    .line 885
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 49
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 638
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 708
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    iget v0, v0, Ljava/lang/Float;->value:F

    .line 709
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 708
    :goto_18
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 626
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 652
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 605
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist test-api isInfinite()Z
    .registers 2

    .line 555
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNaN()Z
    .registers 2

    .line 543
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 617
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 593
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 568
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
