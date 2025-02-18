.class public Ljava/security/spec/ECFieldFp;
.super Ljava/lang/Object;
.source "ECFieldFp.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "p is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_13
    iput-object p1, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 85
    :cond_4
    instance-of v0, p1, Ljava/security/spec/ECFieldFp;

    if-eqz v0, :cond_13

    .line 86
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    check-cast p1, Ljava/security/spec/ECFieldFp;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
