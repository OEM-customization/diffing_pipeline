.class final Lcom/android/org/conscrypt/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x777d6c0a72acebaaL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 35
    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0xc
    nop

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    if-ne p0, p1, :cond_5

    .line 71
    return v4

    .line 72
    :cond_5
    if-nez p1, :cond_8

    .line 73
    return v3

    .line 74
    :cond_8
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@3
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@3
    nop

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 75
    return v3

    :cond_13
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/org/conscrypt/X509PublicKey;

    .line 77
    .local v0, "other":Lcom/android/org/conscrypt/X509PublicKey;
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    if-nez v1, :cond_1f

    .line 78
    #disallowed odex opcode
    #iget-object-quick v1, v0, field@0x8
    nop

    if-eqz v1, :cond_2a

    .line 79
    return v3

    .line 80
    :cond_1f
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #iget-object-quick v2, v0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@1
    nop

    move-result v1

    if-nez v1, :cond_2a

    .line 81
    return v3

    .line 82
    :cond_2a
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v2, v0, field@0xc
    nop

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_35

    .line 83
    return v3

    .line 84
    :cond_35
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 50
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 61
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 65
    return v1

    .line 63
    :cond_15
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@4
    nop

    move-result v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "X509PublicKey [algorithm="

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    const-string/jumbo v1, ", encoded="

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    .line 56
    const-string/jumbo v1, "]"

    .line 55
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    return-object v0
.end method
