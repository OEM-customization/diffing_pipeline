.class public final Lsun/security/util/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x78b20eec64177f2eL


# instance fields
.field private greylist-max-o componentLen:I

.field private greylist-max-o components:Ljava/lang/Object;

.field private transient greylist-max-o componentsCalculated:Z

.field private greylist-max-o encoding:[B

.field private volatile transient greylist-max-o stringForm:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 53
    return-void
.end method

.method public constructor greylist core-platform-api <init>(Ljava/lang/String;)V
    .registers 16
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 144
    const/16 v2, 0x2e

    .line 145
    .local v2, "ch":I
    const/4 v3, 0x0

    .line 146
    .local v3, "start":I
    const/4 v4, 0x0

    .line 148
    .local v4, "end":I
    const/4 v5, 0x0

    .line 149
    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v6, v6, [B

    .line 150
    .local v6, "tmp":[B
    const/4 v7, 0x0

    .line 151
    .local v7, "first":I
    const/4 v8, 0x0

    .line 154
    .local v8, "count":I
    const/4 v9, 0x0

    .line 156
    .local v9, "comp":Ljava/lang/String;
    :cond_1c
    const/4 v10, 0x0

    .line 157
    .local v10, "length":I
    :try_start_1d
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    move v4, v11

    .line 158
    if-ne v4, v0, :cond_2f

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    .end local v10    # "length":I
    .local v11, "length":I
    goto :goto_36

    .line 162
    .end local v11    # "length":I
    .restart local v10    # "length":I
    :cond_2f
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 163
    sub-int v11, v4, v3

    .line 166
    .end local v10    # "length":I
    .restart local v11    # "length":I
    :goto_36
    const/16 v10, 0x9

    const/4 v12, 0x1

    if-le v11, v10, :cond_66

    .line 167
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 168
    .local v10, "bignum":Ljava/math/BigInteger;
    if-nez v8, :cond_4b

    .line 169
    invoke-static {v10}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(Ljava/math/BigInteger;)V

    .line 170
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    move v7, v12

    goto :goto_65

    .line 172
    :cond_4b
    if-ne v8, v12, :cond_5d

    .line 173
    invoke-static {v7, v10}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(ILjava/math/BigInteger;)V

    .line 174
    mul-int/lit8 v12, v7, 0x28

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object v10, v12

    goto :goto_60

    .line 176
    :cond_5d
    invoke-static {v8, v10}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(ILjava/math/BigInteger;)V

    .line 178
    :goto_60
    invoke-static {v10, v6, v5}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v12

    add-int/2addr v5, v12

    .line 180
    .end local v10    # "bignum":Ljava/math/BigInteger;
    :goto_65
    goto :goto_82

    .line 181
    :cond_66
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 182
    .local v10, "num":I
    if-nez v8, :cond_71

    .line 183
    invoke-static {v10}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 184
    move v7, v10

    goto :goto_82

    .line 186
    :cond_71
    if-ne v8, v12, :cond_7a

    .line 187
    invoke-static {v7, v10}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    .line 188
    mul-int/lit8 v12, v7, 0x28

    add-int/2addr v10, v12

    goto :goto_7d

    .line 190
    :cond_7a
    invoke-static {v8, v10}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V

    .line 192
    :goto_7d
    invoke-static {v10, v6, v5}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v12

    add-int/2addr v5, v12

    .line 195
    .end local v10    # "num":I
    :goto_82
    add-int/lit8 v3, v4, 0x1

    .line 196
    nop

    .end local v11    # "length":I
    add-int/lit8 v8, v8, 0x1

    .line 197
    if-ne v4, v0, :cond_1c

    .line 199
    invoke-static {v8}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 200
    new-array v0, v5, [B

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 201
    invoke-static {v6, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object p1, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_95} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_95} :catch_97

    .line 208
    .end local v9    # "comp":Ljava/lang/String;
    nop

    .line 209
    return-void

    .line 205
    :catch_97
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b3
    move-exception v0

    .line 204
    .local v0, "ioe":Ljava/io/IOException;
    throw v0
.end method

.method constructor greylist-max-o <init>(Lsun/security/util/DerInputBuffer;)V
    .registers 4
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 276
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 277
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 278
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 279
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 280
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 7
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 251
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v0

    int-to-byte v0, v0

    .line 252
    .local v0, "type_id":B
    const/4 v1, 0x6

    if-ne v0, v1, :cond_50

    .line 258
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    move-result v1

    .line 259
    .local v1, "len":I
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_2d

    .line 264
    new-array v2, v1, [B

    iput-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 265
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 266
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 267
    return-void

    .line 260
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ObjectIdentifier() -- length exceedsdata available.  Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v1    # "len":I
    :cond_50
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor greylist <init>([I)V
    .registers 4
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 217
    array-length v1, p1

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 218
    aget v1, p1, v0

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 219
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    .line 220
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_20
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 221
    aget v1, p1, v0

    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 222
    .end local v0    # "i":I
    :cond_2b
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lsun/security/util/ObjectIdentifier;->init([II)V

    .line 223
    return-void
.end method

.method private static greylist-max-o check([B)V
    .registers 5
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    array-length v0, p0

    .line 610
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2c

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_2b

    .line 617
    aget-byte v2, p0, v1

    const/16 v3, -0x80

    if-ne v2, v3, :cond_28

    if-eqz v1, :cond_20

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_20

    goto :goto_28

    .line 619
    :cond_20
    new-instance v2, Ljava/io/IOException;

    const-string v3, "ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 623
    .end local v1    # "i":I
    :cond_2b
    return-void

    .line 612
    :cond_2c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ObjectIdentifier() -- Invalid DER encoding, not ended"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkCount(I)V
    .registers 3
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x2

    if-lt p0, v0, :cond_4

    .line 629
    return-void

    .line 626
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkFirstComponent(I)V
    .registers 3
    .param p0, "first"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    if-ltz p0, :cond_6

    const/4 v0, 0x2

    if-gt p0, v0, :cond_6

    .line 635
    return-void

    .line 632
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkFirstComponent(Ljava/math/BigInteger;)V
    .registers 3
    .param p0, "first"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    const-wide/16 v0, 0x2

    .line 638
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    .line 642
    return-void

    .line 639
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkOtherComponent(II)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    if-ltz p1, :cond_3

    .line 662
    return-void

    .line 659
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be non-negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkOtherComponent(ILjava/math/BigInteger;)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "num"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 668
    return-void

    .line 665
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be non-negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSecondComponent(II)V
    .registers 4
    .param p0, "first"    # I
    .param p1, "second"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    if-ltz p1, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/16 v0, 0x27

    if-gt p1, v0, :cond_a

    .line 648
    :cond_9
    return-void

    .line 645
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSecondComponent(ILjava/math/BigInteger;)V
    .registers 4
    .param p0, "first"    # I
    .param p1, "second"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const-wide/16 v0, 0x27

    .line 652
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 656
    :cond_17
    return-void

    .line 653
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o init([II)V
    .registers 10
    .param p1, "components"    # [I
    .param p2, "length"    # I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "pos":I
    mul-int/lit8 v1, p2, 0x5

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 286
    .local v1, "tmp":[B
    aget v3, p1, v2

    const/4 v4, 0x0

    aget v5, p1, v4

    mul-int/lit8 v5, v5, 0x28

    const v6, 0x7fffffff

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_21

    .line 287
    aget v3, p1, v4

    mul-int/lit8 v3, v3, 0x28

    aget v2, p1, v2

    add-int/2addr v3, v2

    invoke-static {v3, v1, v0}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3a

    .line 289
    :cond_21
    aget v2, p1, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 290
    .local v2, "big":Ljava/math/BigInteger;
    aget v3, p1, v4

    mul-int/lit8 v3, v3, 0x28

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 291
    invoke-static {v2, v1, v0}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 294
    .end local v2    # "big":Ljava/math/BigInteger;
    :goto_3a
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_3b
    if-ge v2, p2, :cond_47

    .line 295
    aget v3, p1, v2

    invoke-static {v3, v1, v0}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 297
    .end local v2    # "i":I
    :cond_47
    new-array v2, v0, [B

    iput-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 298
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-void
.end method

.method public static greylist newInternal([I)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "values"    # [I

    .line 312
    :try_start_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>([I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 313
    :catch_6
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o pack([BIIII)[B
    .registers 15
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "iw"    # I
    .param p4, "ow"    # I

    .line 502
    nop

    .line 503
    nop

    .line 505
    if-ne p3, p4, :cond_b

    .line 506
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 509
    :cond_b
    mul-int v0, p2, p3

    .line 510
    .local v0, "bits":I
    add-int v1, v0, p4

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, p4

    new-array v1, v1, [B

    .line 513
    .local v1, "out":[B
    const/4 v3, 0x0

    .line 516
    .local v3, "ipos":I
    add-int v4, v0, p4

    sub-int/2addr v4, v2

    div-int/2addr v4, p4

    mul-int/2addr v4, p4

    sub-int/2addr v4, v0

    .line 518
    .local v4, "opos":I
    :goto_1b
    if-ge v3, v0, :cond_4d

    .line 519
    rem-int v5, v3, p3

    sub-int v5, p3, v5

    .line 520
    .local v5, "count":I
    rem-int v6, v4, p4

    sub-int v6, p4, v6

    if-le v5, v6, :cond_2b

    .line 521
    rem-int v6, v4, p4

    sub-int v5, p4, v6

    .line 524
    :cond_2b
    div-int v6, v4, p4

    aget-byte v7, v1, v6

    div-int v8, v3, p3

    add-int/2addr v8, p1

    aget-byte v8, p0, v8

    add-int/lit16 v8, v8, 0x100

    rem-int v9, v3, p3

    sub-int v9, p3, v9

    sub-int/2addr v9, v5

    shr-int/2addr v8, v9

    shl-int v9, v2, v5

    sub-int/2addr v9, v2

    and-int/2addr v8, v9

    rem-int v9, v4, p4

    sub-int v9, p4, v9

    sub-int/2addr v9, v5

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 529
    add-int/2addr v3, v5

    .line 530
    add-int/2addr v4, v5

    .line 531
    .end local v5    # "count":I
    goto :goto_1b

    .line 532
    :cond_4d
    return-object v1
.end method

.method private static greylist-max-o pack7Oid(I[BI)I
    .registers 8
    .param p0, "input"    # I
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .line 580
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 581
    .local v1, "b":[B
    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 582
    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 583
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 584
    int-to-byte v2, p0

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 585
    invoke-static {v1, v3, v0, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o pack7Oid(Ljava/math/BigInteger;[BI)I
    .registers 6
    .param p0, "input"    # Ljava/math/BigInteger;
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .line 592
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 593
    .local v0, "b":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o pack7Oid([BII[BI)I
    .registers 9
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .line 545
    const/16 v0, 0x8

    const/4 v1, 0x7

    invoke-static {p0, p1, p2, v0, v1}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v0

    .line 546
    .local v0, "pack":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 547
    .local v1, "firstNonZero":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_1e

    .line 548
    aget-byte v3, v0, v2

    if-eqz v3, :cond_14

    .line 549
    move v1, v2

    .line 551
    :cond_14
    aget-byte v3, v0, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 547
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 553
    .end local v2    # "i":I
    :cond_1e
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    array-length v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method private static greylist-max-o pack8([BII[BI)I
    .registers 9
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .line 565
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v0

    .line 566
    .local v0, "pack":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 567
    .local v1, "firstNonZero":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_17

    .line 568
    aget-byte v3, v0, v2

    if-eqz v3, :cond_14

    .line 569
    move v1, v2

    .line 567
    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 572
    .end local v2    # "i":I
    :cond_17
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    array-length v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 113
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    if-nez v0, :cond_10

    .line 114
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    .line 116
    :cond_10
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    if-nez v0, :cond_17

    .line 121
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v0

    .line 122
    .local v0, "comps":[I
    if-eqz v0, :cond_10

    .line 123
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 124
    array-length v1, v0

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    goto :goto_14

    .line 126
    :cond_10
    sget-object v1, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 128
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 130
    .end local v0    # "comps":[I
    :cond_17
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 131
    return-void
.end method


# virtual methods
.method greylist-max-o encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 325
    return-void
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 342
    if-ne p0, p1, :cond_4

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_4
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-nez v0, :cond_a

    .line 346
    const/4 v0, 0x0

    return v0

    .line 348
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 349
    .local v0, "other":Lsun/security/util/ObjectIdentifier;
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v2, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public greylist equals(Lsun/security/util/ObjectIdentifier;)Z
    .registers 3
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 354
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist toIntArray()[I
    .registers 15

    .line 365
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v0, v0

    .line 366
    .local v0, "length":I
    const/16 v1, 0x14

    new-array v1, v1, [I

    .line 367
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 368
    .local v2, "which":I
    const/4 v3, 0x0

    .line 369
    .local v3, "fromPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v0, :cond_ae

    .line 370
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_a1

    .line 372
    sub-int v5, v4, v3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-le v5, v7, :cond_69

    .line 373
    new-instance v5, Ljava/math/BigInteger;

    iget-object v7, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v9, v4, v3

    add-int/2addr v9, v6

    const/16 v10, 0x8

    const/4 v11, 0x7

    invoke-static {v7, v3, v9, v11, v10}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/math/BigInteger;-><init>([B)V

    .line 374
    .local v5, "big":Ljava/math/BigInteger;
    const/4 v7, 0x0

    const-wide/32 v9, 0x7fffffff

    if-nez v3, :cond_55

    .line 375
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "which":I
    .local v11, "which":I
    aput v8, v1, v2

    .line 376
    const-wide/16 v12, 0x50

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 377
    .local v2, "second":Ljava/math/BigInteger;
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ne v8, v6, :cond_4c

    .line 378
    return-object v7

    .line 380
    :cond_4c
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "which":I
    .local v6, "which":I
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    aput v7, v1, v11

    .line 382
    .end local v2    # "second":Ljava/math/BigInteger;
    goto :goto_68

    .line 383
    .end local v6    # "which":I
    .local v2, "which":I
    :cond_55
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ne v8, v6, :cond_60

    .line 384
    return-object v7

    .line 386
    :cond_60
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "which":I
    .restart local v6    # "which":I
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    aput v7, v1, v2

    .line 389
    .end local v5    # "big":Ljava/math/BigInteger;
    :goto_68
    goto :goto_9d

    .line 390
    .end local v6    # "which":I
    .restart local v2    # "which":I
    :cond_69
    const/4 v5, 0x0

    .line 391
    .local v5, "retval":I
    move v6, v3

    .local v6, "j":I
    :goto_6b
    if-gt v6, v4, :cond_79

    .line 392
    shl-int/lit8 v5, v5, 0x7

    .line 393
    iget-object v7, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v7, v7, v6

    .line 394
    .local v7, "tmp":B
    and-int/lit8 v9, v7, 0x7f

    or-int/2addr v5, v9

    .line 391
    .end local v7    # "tmp":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 396
    .end local v6    # "j":I
    :cond_79
    if-nez v3, :cond_99

    .line 397
    const/16 v6, 0x50

    if-ge v5, v6, :cond_8d

    .line 398
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "which":I
    .local v6, "which":I
    div-int/lit8 v7, v5, 0x28

    aput v7, v1, v2

    .line 399
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "which":I
    .restart local v2    # "which":I
    rem-int/lit8 v7, v5, 0x28

    aput v7, v1, v6

    move v6, v2

    goto :goto_9d

    .line 401
    :cond_8d
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "which":I
    .restart local v6    # "which":I
    aput v8, v1, v2

    .line 402
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "which":I
    .restart local v2    # "which":I
    add-int/lit8 v7, v5, -0x50

    aput v7, v1, v6

    move v6, v2

    goto :goto_9d

    .line 405
    :cond_99
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "which":I
    .restart local v6    # "which":I
    aput v5, v1, v2

    .line 408
    .end local v5    # "retval":I
    :goto_9d
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v2, v6

    .line 410
    .end local v6    # "which":I
    .restart local v2    # "which":I
    :cond_a1
    array-length v5, v1

    if-lt v2, v5, :cond_aa

    .line 411
    add-int/lit8 v5, v2, 0xa

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 369
    :cond_aa
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 414
    .end local v4    # "i":I
    :cond_ae
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    return-object v4
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 12

    .line 425
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 426
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_8e

    .line 427
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v1, v1

    .line 428
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 430
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 431
    .local v3, "fromPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v1, :cond_88

    .line 432
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_85

    .line 434
    const/16 v5, 0x2e

    if-eqz v3, :cond_21

    .line 435
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 437
    :cond_21
    sub-int v6, v4, v3

    add-int/lit8 v6, v6, 0x1

    const-string v7, "2."

    const/4 v8, 0x4

    if-le v6, v8, :cond_53

    .line 438
    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v8, v4, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x7

    invoke-static {v6, v3, v8, v10, v9}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 439
    .local v5, "big":Ljava/math/BigInteger;
    if-nez v3, :cond_4f

    .line 442
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-wide/16 v6, 0x50

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 445
    :cond_4f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 447
    .end local v5    # "big":Ljava/math/BigInteger;
    :goto_52
    goto :goto_83

    .line 448
    :cond_53
    const/4 v6, 0x0

    .line 449
    .local v6, "retval":I
    move v8, v3

    .local v8, "j":I
    :goto_55
    if-gt v8, v4, :cond_63

    .line 450
    shl-int/lit8 v6, v6, 0x7

    .line 451
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v9, v9, v8

    .line 452
    .local v9, "tmp":B
    and-int/lit8 v10, v9, 0x7f

    or-int/2addr v6, v10

    .line 449
    .end local v9    # "tmp":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    .line 454
    .end local v8    # "j":I
    :cond_63
    if-nez v3, :cond_80

    .line 455
    const/16 v8, 0x50

    if-ge v6, v8, :cond_77

    .line 456
    div-int/lit8 v7, v6, 0x28

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    rem-int/lit8 v5, v6, 0x28

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_83

    .line 460
    :cond_77
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    add-int/lit8 v5, v6, -0x50

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_83

    .line 464
    :cond_80
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 467
    .end local v6    # "retval":I
    :goto_83
    add-int/lit8 v3, v4, 0x1

    .line 431
    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 470
    .end local v4    # "i":I
    :cond_88
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 473
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "fromPos":I
    :cond_8e
    return-object v0
.end method
