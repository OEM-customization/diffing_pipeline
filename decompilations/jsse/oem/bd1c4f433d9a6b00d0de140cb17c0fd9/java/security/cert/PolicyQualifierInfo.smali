.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private mData:[B

.field private mEncoded:[B

.field private mId:Ljava/lang/String;

.field private pqiString:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 8
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    .line 103
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 104
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    .line 105
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for PolicyQualifierInfo"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_23
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    .line 108
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v0

    .line 109
    .local v0, "tmp":[B
    if-nez v0, :cond_3e

    .line 110
    iput-object v5, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    .line 115
    :goto_3d
    return-void

    .line 112
    :cond_3e
    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    .line 113
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3d
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getPolicyQualifier()[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_5
.end method

.method public final getPolicyQualifierId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 161
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 162
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    return-object v2

    .line 163
    :cond_7
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 164
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "PolicyQualifierInfo: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  qualifierID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  qualifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    if-nez v2, :cond_6b

    const-string/jumbo v2, "null"

    .line 167
    :goto_4a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    const-string/jumbo v3, "\n"

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    return-object v2

    .line 168
    :cond_6b
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a
.end method
