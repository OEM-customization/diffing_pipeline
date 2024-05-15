.class abstract Lsun/invoke/util/Wrapper$Format;
.super Ljava/lang/Object;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/invoke/util/Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Format"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BOOLEAN:I = 0x5

.field static final CHAR:I = 0x41

.field static final FLOAT:I = 0x1081

.field static final FLOATING:I = 0x1000

.field static final INT:I = -0xf7f

.field static final KIND_SHIFT:I = 0xc

.field static final NUM_MASK:I = -0x4

.field static final SHORT:I = -0xfbf

.field static final SIGNED:I = -0x1000

.field static final SIZE_MASK:I = 0x3ff

.field static final SIZE_SHIFT:I = 0x2

.field static final SLOT_MASK:I = 0x3

.field static final SLOT_SHIFT:I

.field static final UNSIGNED:I

.field static final VOID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/invoke/util/Wrapper$Format;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static floating(I)I
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 103
    const/16 v0, 0x20

    if-le p0, v0, :cond_c

    const/4 v0, 0x2

    :goto_5
    const/16 v1, 0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static format(III)I
    .registers 8
    .param p0, "kind"    # I
    .param p1, "size"    # I
    .param p2, "slots"    # I

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_16

    shr-int/lit8 v2, p0, 0xc

    shl-int/lit8 v2, v2, 0xc

    if-eq v2, p0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_16
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_25

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v2, p1

    if-eqz v2, :cond_25

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_25
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_50

    const/16 v2, -0x1000

    if-ne p0, v2, :cond_3a

    if-lez p1, :cond_38

    move v2, v0

    :goto_30
    if-nez v2, :cond_50

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_38
    move v2, v1

    goto :goto_30

    .line 85
    :cond_3a
    if-nez p0, :cond_42

    if-lez p1, :cond_40

    move v2, v0

    goto :goto_30

    :cond_40
    move v2, v1

    goto :goto_30

    .line 86
    :cond_42
    const/16 v2, 0x1000

    if-ne p0, v2, :cond_4e

    if-eq p1, v3, :cond_4a

    if-ne p1, v4, :cond_4c

    :cond_4a
    move v2, v0

    goto :goto_30

    :cond_4c
    move v2, v1

    goto :goto_30

    :cond_4e
    move v2, v1

    .line 87
    goto :goto_30

    .line 88
    :cond_50
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_6b

    const/4 v2, 0x2

    if-ne p2, v2, :cond_63

    if-ne p1, v4, :cond_61

    :cond_59
    :goto_59
    if-nez v0, :cond_6b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_61
    move v0, v1

    goto :goto_59

    .line 89
    :cond_63
    if-ne p2, v0, :cond_69

    if-le p1, v3, :cond_59

    move v0, v1

    goto :goto_59

    :cond_69
    move v0, v1

    .line 90
    goto :goto_59

    .line 91
    :cond_6b
    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method static other(I)I
    .registers 2
    .param p0, "slots"    # I

    .prologue
    .line 104
    shl-int/lit8 v0, p0, 0x0

    return v0
.end method

.method static signed(I)I
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 101
    const/16 v0, 0x20

    if-le p0, v0, :cond_c

    const/4 v0, 0x2

    :goto_5
    const/16 v1, -0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static unsigned(I)I
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 102
    const/16 v0, 0x20

    if-le p0, v0, :cond_b

    const/4 v0, 0x2

    :goto_5
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method
