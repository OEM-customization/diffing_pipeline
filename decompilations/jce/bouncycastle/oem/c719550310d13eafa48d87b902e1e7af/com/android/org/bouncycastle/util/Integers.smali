.class public Lcom/android/org/bouncycastle/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateLeft(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    return v0
.end method

.method public static rotateRight(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    return v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
