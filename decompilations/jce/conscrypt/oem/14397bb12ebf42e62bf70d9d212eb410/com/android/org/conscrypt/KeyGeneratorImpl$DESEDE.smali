.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$DESEDE;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DESEDE"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 127
    const-string/jumbo v0, "DESEDE"

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl;)V

    .line 128
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .prologue
    .line 132
    const/16 v0, 0x70

    if-eq p1, v0, :cond_11

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_11

    .line 133
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Key size must be either 112 or 168 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_11
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected doKeyGeneration(I)[B
    .registers 7
    .param p1, "keyBytes"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    const/16 v2, 0x18

    new-array v1, v2, [B

    .line 140
    .local v1, "keyData":[B
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v1}, vtable@28
    nop

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 143
    aget-byte v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    .line 144
    aget-byte v2, v1, v0

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 142
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 147
    :cond_22
    const/16 v2, 0xe

    if-ne p1, v2, :cond_2d

    .line 149
    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    :cond_2d
    return-object v1
.end method
