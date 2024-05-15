.class Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreparedASCIIToBinaryBuffer"
.end annotation


# instance fields
.field private final doubleVal:D

.field private final floatVal:F


# direct methods
.method public constructor <init>(DF)V
    .registers 5
    .param p1, "doubleVal"    # D
    .param p3, "floatVal"    # F

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-wide p1, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    .line 1011
    iput p3, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    .line 1012
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .prologue
    .line 1016
    iget-wide v0, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 1021
    iget v0, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    return v0
.end method
