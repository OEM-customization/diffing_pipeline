.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source "Tables1kGCMExponentiator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private lookupPowX2:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureAvailable(I)V
    .registers 6
    .param p1, "bit"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 46
    .local v0, "count":I
    if-gt v0, p1, :cond_22

    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 51
    .local v1, "tmp":[I
    :cond_12
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    .line 52
    invoke-static {v1, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    .line 53
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_12

    .line 57
    .end local v1    # "tmp":[I
    :cond_22
    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .registers 11
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsInts()[I

    move-result-object v1

    .line 28
    .local v1, "y":[I
    const/4 v0, 0x0

    .line 29
    .local v0, "bit":I
    :goto_7
    cmp-long v2, p1, v4

    if-lez v2, :cond_25

    .line 31
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    .line 33
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->ensureAvailable(I)V

    .line 34
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    .line 36
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 37
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    goto :goto_7

    .line 40
    :cond_25
    invoke-static {v1, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    .line 41
    return-void
.end method

.method public init([B)V
    .registers 5
    .param p1, "x"    # [B

    .prologue
    .line 15
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v0

    .line 16
    .local v0, "y":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 18
    return-void

    .line 21
    :cond_18
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    .line 22
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
