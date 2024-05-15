.class public Lsun/misc/FpUtils;
.super Ljava/lang/Object;
.source "FpUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/misc/FpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static getExponent(D)I
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static ilogb(D)I
    .registers 10
    .param p0, "d"    # D

    .prologue
    const/16 v6, -0x3fe

    .line 342
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 344
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_68

    .line 387
    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_67

    if-lt v0, v6, :cond_13

    .line 388
    const/16 v1, 0x3ff

    if-le v0, v1, :cond_67

    .line 387
    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 346
    :sswitch_19
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 347
    const/high16 v1, 0x40000000    # 2.0f

    return v1

    .line 349
    :cond_22
    const/high16 v1, 0x10000000

    return v1

    .line 352
    :sswitch_25
    const-wide/16 v4, 0x0

    cmpl-double v1, p0, v4

    if-nez v1, :cond_2e

    .line 353
    const/high16 v1, -0x10000000

    return v1

    .line 356
    :cond_2e
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 367
    .local v2, "transducer":J
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    .line 368
    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_48

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_48

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 375
    :cond_48
    :goto_48
    const-wide/high16 v4, 0x10000000000000L

    .line 374
    cmp-long v1, v2, v4

    if-gez v1, :cond_54

    .line 376
    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    .line 377
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    .line 379
    :cond_54
    add-int/lit8 v0, v0, 0x1

    .line 380
    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_66

    .line 381
    const/16 v1, -0x432

    .line 380
    if-lt v0, v1, :cond_60

    .line 382
    if-lt v0, v6, :cond_66

    .line 380
    :cond_60
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 383
    :cond_66
    return v0

    .line 389
    .end local v2    # "transducer":J
    :cond_67
    return v0

    .line 344
    :sswitch_data_68
    .sparse-switch
        -0x3ff -> :sswitch_25
        0x400 -> :sswitch_19
    .end sparse-switch
.end method

.method public static ilogb(F)I
    .registers 5
    .param p0, "f"    # F

    .prologue
    const/16 v3, -0x7e

    .line 412
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 414
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_5e

    .line 457
    sget-boolean v2, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_5d

    if-lt v0, v3, :cond_13

    .line 458
    const/16 v2, 0x7f

    if-le v0, v2, :cond_5d

    .line 457
    :cond_13
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 416
    :sswitch_19
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 417
    const/high16 v2, 0x40000000    # 2.0f

    return v2

    .line 419
    :cond_22
    const/high16 v2, 0x10000000

    return v2

    .line 422
    :sswitch_25
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_2d

    .line 423
    const/high16 v2, -0x10000000

    return v2

    .line 426
    :cond_2d
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 437
    .local v1, "transducer":I
    const v2, 0x7fffff

    and-int/2addr v1, v2

    .line 438
    sget-boolean v2, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_41

    if-nez v1, :cond_41

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 445
    :cond_41
    :goto_41
    const/high16 v2, 0x800000

    .line 444
    if-ge v1, v2, :cond_4a

    .line 446
    mul-int/lit8 v1, v1, 0x2

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    .line 449
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    .line 450
    sget-boolean v2, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_5c

    .line 451
    const/16 v2, -0x95

    .line 450
    if-lt v0, v2, :cond_56

    .line 452
    if-lt v0, v3, :cond_5c

    .line 450
    :cond_56
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 453
    :cond_5c
    return v0

    .line 459
    .end local v1    # "transducer":I
    :cond_5d
    return v0

    .line 414
    :sswitch_data_5e
    .sparse-switch
        -0x7f -> :sswitch_25
        0x80 -> :sswitch_19
    .end sparse-switch
.end method

.method public static isFinite(D)Z
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    return v0
.end method

.method public static isFinite(F)Z
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    return v0
.end method

.method public static isInfinite(D)Z
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 240
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static isInfinite(F)Z
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 256
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public static isNaN(D)Z
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 272
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static isNaN(F)Z
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 288
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public static isUnordered(DD)Z
    .registers 6
    .param p0, "arg1"    # D
    .param p2, "arg2"    # D

    .prologue
    .line 304
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isUnordered(FF)Z
    .registers 3
    .param p0, "arg1"    # F
    .param p1, "arg2"    # F

    .prologue
    .line 320
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextDown(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 757
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDown(F)D
    .registers 3
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static nextUp(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 695
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 726
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static rawCopySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rawCopySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scale_factor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scale_factor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 572
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static signum(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 906
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 929
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static ulp(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 854
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 883
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
