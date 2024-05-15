.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o iterationCount:I

.field private greylist-max-o keyLength:I

.field private greylist-max-o password:[C

.field private greylist-max-o salt:[B


# direct methods
.method public constructor whitelist core-platform-api test-api <init>([C)V
    .registers 4
    .param p1, "password"    # [C

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 80
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 83
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 81
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 85
    :goto_1e
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>([C[BI)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 151
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 154
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 152
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 156
    :goto_1e
    if-eqz p2, :cond_40

    .line 159
    array-length v0, p2

    if-eqz v0, :cond_38

    .line 163
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 165
    if-lez p3, :cond_30

    .line 168
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 169
    return-void

    .line 166
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([C[BII)V
    .registers 7
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 109
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 112
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 110
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 114
    :goto_1e
    if-eqz p2, :cond_4c

    .line 117
    array-length v0, p2

    if-eqz v0, :cond_44

    .line 121
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 123
    if-lez p3, :cond_3c

    .line 126
    if-lez p4, :cond_34

    .line 129
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 130
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 131
    return-void

    .line 127
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid keyLength value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api clearPassword()V
    .registers 4

    .line 176
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v0, :cond_14

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 178
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 182
    :cond_14
    return-void
.end method

.method public final whitelist core-platform-api test-api getIterationCount()I
    .registers 2

    .line 225
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final whitelist core-platform-api test-api getKeyLength()I
    .registers 2

    .line 238
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final whitelist core-platform-api test-api getPassword()[C
    .registers 3

    .line 196
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v0, :cond_b

    .line 199
    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0

    .line 197
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getSalt()[B
    .registers 2

    .line 212
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-eqz v0, :cond_b

    .line 213
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 215
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
