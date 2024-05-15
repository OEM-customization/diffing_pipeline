.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mEncoded:[B

.field private greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o pqiString:Ljava/lang/String;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>([B)V
    .registers 7
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    .line 103
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    move-object v0, v1

    .line 104
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3e

    .line 107
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    .line 108
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v1

    .line 109
    .local v1, "tmp":[B
    if-nez v1, :cond_33

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    goto :goto_3d

    .line 112
    :cond_33
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    .line 113
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :goto_3d
    return-void

    .line 105
    .end local v1    # "tmp":[B
    :cond_3e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding for PolicyQualifierInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final whitelist core-platform-api test-api getEncoded()[B
    .registers 2

    .line 138
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPolicyQualifier()[B
    .registers 2

    .line 150
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_c
    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPolicyQualifierId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 161
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 162
    return-object v0

    .line 163
    :cond_5
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 164
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "PolicyQualifierInfo: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  qualifierID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  qualifier: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v4, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    if-nez v4, :cond_40

    const-string v4, "null"

    goto :goto_44

    :cond_40
    invoke-virtual {v0, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    :goto_44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    .line 171
    return-object v2
.end method
