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
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x78b20eec64177f2eL


# instance fields
.field private componentLen:I

.field private components:Ljava/lang/Object;

.field private transient componentsCalculated:Z

.field private encoding:[B

.field private volatile transient stringForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 20
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 144
    const/16 v3, 0x2e

    .line 145
    .local v3, "ch":I
    const/4 v13, 0x0

    .line 146
    .local v13, "start":I
    const/4 v7, 0x0

    .line 148
    .local v7, "end":I
    const/4 v12, 0x0

    .line 149
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    new-array v14, v15, [B

    .line 150
    .local v14, "tmp":[B
    const/4 v8, 0x0

    .line 151
    .local v8, "first":I
    const/4 v5, 0x0

    .line 154
    .local v5, "count":I
    const/4 v4, 0x0

    .line 156
    :cond_25
    const/4 v10, 0x0

    .line 157
    .local v10, "length":I
    :try_start_26
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 158
    const/4 v15, -0x1

    if-ne v7, v15, :cond_73

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "comp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v10, v15, v13

    .line 166
    :goto_3b
    const/16 v15, 0x9

    if-le v10, v15, :cond_9b

    .line 167
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "bignum":Ljava/math/BigInteger;
    if-nez v5, :cond_7c

    .line 169
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(Ljava/math/BigInteger;)V

    .line 170
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 195
    .end local v2    # "bignum":Ljava/math/BigInteger;
    :goto_4d
    add-int/lit8 v13, v7, 0x1

    .line 196
    add-int/lit8 v5, v5, 0x1

    .line 197
    const/4 v15, -0x1

    if-ne v7, v15, :cond_25

    .line 199
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 200
    new-array v15, v12, [B

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 209
    return-void

    .line 162
    .end local v4    # "comp":Ljava/lang/String;
    :cond_73
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4    # "comp":Ljava/lang/String;
    sub-int v10, v7, v13

    goto :goto_3b

    .line 172
    .restart local v2    # "bignum":Ljava/math/BigInteger;
    :cond_7c
    const/4 v15, 0x1

    if-ne v5, v15, :cond_95

    .line 173
    invoke-static {v8, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(ILjava/math/BigInteger;)V

    .line 174
    mul-int/lit8 v15, v8, 0x28

    int-to-long v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 178
    :goto_8f
    invoke-static {v2, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_4d

    .line 176
    :cond_95
    invoke-static {v5, v2}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(ILjava/math/BigInteger;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_98} :catch_99
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_98} :catch_b9

    goto :goto_8f

    .line 203
    .end local v2    # "bignum":Ljava/math/BigInteger;
    .end local v4    # "comp":Ljava/lang/String;
    :catch_99
    move-exception v9

    .line 204
    .local v9, "ioe":Ljava/io/IOException;
    throw v9

    .line 181
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v4    # "comp":Ljava/lang/String;
    :cond_9b
    :try_start_9b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 182
    .local v11, "num":I
    if-nez v5, :cond_a6

    .line 183
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 184
    move v8, v11

    goto :goto_4d

    .line 186
    :cond_a6
    const/4 v15, 0x1

    if-ne v5, v15, :cond_b5

    .line 187
    invoke-static {v8, v11}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    .line 188
    mul-int/lit8 v15, v8, 0x28

    add-int/2addr v11, v15

    .line 192
    :goto_af
    invoke-static {v11, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_4d

    .line 190
    :cond_b5
    invoke-static {v5, v11}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_b8} :catch_99
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b8} :catch_b9

    goto :goto_af

    .line 205
    .end local v4    # "comp":Ljava/lang/String;
    .end local v11    # "num":I
    :catch_b9
    move-exception v6

    .line 206
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 207
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    .line 206
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .registers 4
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

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
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 279
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .registers 7
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v2, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v2, -0x1

    iput v2, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 251
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v2

    int-to-byte v1, v2

    .line 252
    .local v1, "type_id":B
    const/4 v2, 0x6

    if-eq v1, v2, :cond_37

    .line 253
    new-instance v2, Ljava/io/IOException;

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    const-string/jumbo v4, ")"

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_37
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    move-result v0

    .line 259
    .local v0, "len":I
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-le v0, v2, :cond_6a

    .line 260
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ObjectIdentifier() -- length exceedsdata available.  Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    const-string/jumbo v4, ", Available: "

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_6a
    new-array v2, v0, [B

    iput-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 265
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 266
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 267
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    iput-boolean v2, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 217
    array-length v1, p1

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 218
    aget v1, p1, v2

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 219
    aget v1, p1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

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
    :cond_2b
    array-length v1, p1

    invoke-direct {p0, p1, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    .line 223
    return-void
.end method

.method private static check([B)V
    .registers 5
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    array-length v1, p0

    .line 610
    .local v1, "length":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_c

    .line 611
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_15

    .line 612
    :cond_c
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, not ended"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v1, :cond_34

    .line 617
    aget-byte v2, p0, v0

    const/16 v3, -0x80

    if-ne v2, v3, :cond_31

    .line 618
    if-eqz v0, :cond_28

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_31

    .line 619
    :cond_28
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 623
    :cond_34
    return-void
.end method

.method private static checkCount(I)V
    .registers 3
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x2

    if-ge p0, v0, :cond_c

    .line 626
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_c
    return-void
.end method

.method private static checkFirstComponent(I)V
    .registers 3
    .param p0, "first"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    if-ltz p0, :cond_5

    const/4 v0, 0x2

    if-le p0, v0, :cond_e

    .line 632
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_e
    return-void
.end method

.method private static checkFirstComponent(Ljava/math/BigInteger;)V
    .registers 3
    .param p0, "first"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 638
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 639
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_1d
    return-void
.end method

.method private static checkOtherComponent(II)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    if-gez p1, :cond_25

    .line 659
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    add-int/lit8 v2, p0, 0x1

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    const-string/jumbo v2, " must be non-negative "

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_25
    return-void
.end method

.method private static checkOtherComponent(ILjava/math/BigInteger;)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "num"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 665
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    add-int/lit8 v2, p0, 0x1

    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    const-string/jumbo v2, " must be non-negative "

    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_2a
    return-void
.end method

.method private static checkSecondComponent(II)V
    .registers 4
    .param p0, "first"    # I
    .param p1, "second"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/16 v0, 0x27

    if-le p1, v0, :cond_12

    .line 645
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_12
    return-void
.end method

.method private static checkSecondComponent(ILjava/math/BigInteger;)V
    .registers 4
    .param p0, "first"    # I
    .param p1, "second"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 651
    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    .line 652
    const-wide/16 v0, 0x27

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 653
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_20
    return-void
.end method

.method private init([II)V
    .registers 12
    .param p1, "components"    # [I
    .param p2, "length"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, "pos":I
    mul-int/lit8 v4, p2, 0x5

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    .line 286
    .local v3, "tmp":[B
    aget v4, p1, v8

    aget v5, p1, v7

    mul-int/lit8 v5, v5, 0x28

    const v6, 0x7fffffff

    sub-int v5, v6, v5

    if-ge v4, v5, :cond_30

    .line 287
    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    aget v5, p1, v8

    add-int/2addr v4, v5

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    .line 294
    :goto_23
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_24
    if-ge v1, p2, :cond_4b

    .line 295
    aget v4, p1, v1

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 289
    .end local v1    # "i":I
    :cond_30
    aget v4, p1, v8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 290
    .local v0, "big":Ljava/math/BigInteger;
    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 291
    invoke-static {v0, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    goto :goto_23

    .line 297
    .end local v0    # "big":Ljava/math/BigInteger;
    .restart local v1    # "i":I
    :cond_4b
    new-array v4, v2, [B

    iput-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 298
    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 299
    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "values"    # [I

    .prologue
    .line 312
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p0}, Lsun/security/util/ObjectIdentifier;-><init>([I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 313
    :catch_6
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static pack([BIIII)[B
    .registers 14
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "iw"    # I
    .param p4, "ow"    # I

    .prologue
    const/16 v6, 0x8

    .line 502
    sget-boolean v5, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    if-nez v5, :cond_13

    if-lez p3, :cond_a

    if-le p3, v6, :cond_13

    :cond_a
    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "input NUB must be between 1 and 8"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 503
    :cond_13
    sget-boolean v5, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    if-nez v5, :cond_24

    if-lez p4, :cond_1b

    if-le p4, v6, :cond_24

    :cond_1b
    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "output NUB must be between 1 and 8"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 505
    :cond_24
    if-ne p3, p4, :cond_2d

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    return-object v5

    .line 509
    :cond_2d
    mul-int v0, p2, p3

    .line 510
    .local v0, "bits":I
    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    new-array v4, v5, [B

    .line 513
    .local v4, "out":[B
    const/4 v2, 0x0

    .line 516
    .local v2, "ipos":I
    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    mul-int/2addr v5, p4

    sub-int v3, v5, v0

    .line 518
    .local v3, "opos":I
    :goto_3f
    if-ge v2, v0, :cond_72

    .line 519
    rem-int v5, v2, p3

    sub-int v1, p3, v5

    .line 520
    .local v1, "count":I
    rem-int v5, v3, p4

    sub-int v5, p4, v5

    if-le v1, v5, :cond_4f

    .line 521
    rem-int v5, v3, p4

    sub-int v1, p4, v5

    .line 524
    :cond_4f
    div-int v5, v3, p4

    aget-byte v6, v4, v5

    .line 525
    div-int v7, v2, p3

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    add-int/lit16 v7, v7, 0x100

    .line 526
    rem-int v8, v2, p3

    sub-int v8, p3, v8

    sub-int/2addr v8, v1

    .line 525
    shr-int/2addr v7, v8

    .line 527
    const/4 v8, 0x1

    shl-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    .line 525
    and-int/2addr v7, v8

    .line 528
    rem-int v8, v3, p4

    sub-int v8, p4, v8

    sub-int/2addr v8, v1

    .line 525
    shl-int/2addr v7, v8

    .line 524
    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 529
    add-int/2addr v2, v1

    .line 530
    add-int/2addr v3, v1

    goto :goto_3f

    .line 532
    .end local v1    # "count":I
    :cond_72
    return-object v4
.end method

.method private static pack7Oid(I[BI)I
    .registers 8
    .param p0, "input"    # I
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 580
    new-array v0, v4, [B

    .line 581
    .local v0, "b":[B
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 582
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 583
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 584
    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 585
    invoke-static {v0, v3, v4, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static pack7Oid(Ljava/math/BigInteger;[BI)I
    .registers 6
    .param p0, "input"    # Ljava/math/BigInteger;
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .prologue
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

.method private static pack7Oid([BII[BI)I
    .registers 10
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .prologue
    .line 545
    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    .line 546
    .local v2, "pack":[B
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 547
    .local v0, "firstNonZero":I
    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_1e

    .line 548
    aget-byte v3, v2, v1

    if-eqz v3, :cond_14

    .line 549
    move v0, v1

    .line 551
    :cond_14
    aget-byte v3, v2, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 547
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 553
    :cond_1e
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 554
    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private static pack8([BII[BI)I
    .registers 10
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .prologue
    .line 565
    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    .line 566
    .local v2, "pack":[B
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 567
    .local v0, "firstNonZero":I
    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_17

    .line 568
    aget-byte v3, v2, v1

    if-eqz v3, :cond_14

    .line 569
    move v0, v1

    .line 567
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 572
    :cond_17
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 573
    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    if-nez v1, :cond_12

    .line 121
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v0

    .line 122
    .local v0, "comps":[I
    if-eqz v0, :cond_16

    .line 123
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 124
    array-length v1, v0

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 128
    :goto_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 130
    .end local v0    # "comps":[I
    :cond_12
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 131
    return-void

    .line 126
    .restart local v0    # "comps":[I
    :cond_16
    sget-object v1, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    goto :goto_f
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 325
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 342
    if-ne p0, p1, :cond_4

    .line 343
    const/4 v1, 0x1

    return v1

    .line 345
    :cond_4
    instance-of v1, p1, Lsun/security/util/ObjectIdentifier;

    if-nez v1, :cond_a

    .line 346
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 348
    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 349
    .local v0, "other":Lsun/security/util/ObjectIdentifier;
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v2, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .registers 3
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toIntArray()[I
    .registers 16

    .prologue
    .line 365
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v11

    .line 366
    .local v4, "length":I
    const/16 v11, 0x14

    new-array v5, v11, [I

    .line 367
    .local v5, "result":[I
    const/4 v9, 0x0

    .line 368
    .local v9, "which":I
    const/4 v1, 0x0

    .line 369
    .local v1, "fromPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v10, v9

    .end local v9    # "which":I
    .local v10, "which":I
    :goto_b
    if-ge v2, v4, :cond_b6

    .line 370
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_bb

    .line 372
    sub-int v11, v2, v1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    if-le v11, v12, :cond_80

    .line 373
    new-instance v0, Ljava/math/BigInteger;

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v12, v2, v1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x7

    const/16 v14, 0x8

    invoke-static {v11, v1, v12, v13, v14}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 374
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_67

    .line 375
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    aput v11, v5, v10

    .line 376
    const-wide/16 v12, 0x50

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 377
    .local v7, "second":Ljava/math/BigInteger;
    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4f

    .line 378
    const/4 v11, 0x0

    return-object v11

    .line 380
    :cond_4f
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v9

    move v9, v10

    .line 408
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v7    # "second":Ljava/math/BigInteger;
    .end local v10    # "which":I
    .restart local v9    # "which":I
    :goto_58
    add-int/lit8 v1, v2, 0x1

    .line 410
    :goto_5a
    array-length v11, v5

    if-lt v9, v11, :cond_63

    .line 411
    add-int/lit8 v11, v9, 0xa

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 369
    :cond_63
    add-int/lit8 v2, v2, 0x1

    move v10, v9

    .end local v9    # "which":I
    .restart local v10    # "which":I
    goto :goto_b

    .line 383
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_67
    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_77

    .line 384
    const/4 v11, 0x0

    return-object v11

    .line 386
    :cond_77
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v10

    goto :goto_58

    .line 390
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_80
    const/4 v6, 0x0

    .line 391
    .local v6, "retval":I
    move v3, v1

    .local v3, "j":I
    :goto_82
    if-gt v3, v2, :cond_90

    .line 392
    shl-int/lit8 v6, v6, 0x7

    .line 393
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v11, v3

    .line 394
    .local v8, "tmp":B
    and-int/lit8 v11, v8, 0x7f

    or-int/2addr v6, v11

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 396
    .end local v8    # "tmp":B
    :cond_90
    if-nez v1, :cond_b1

    .line 397
    const/16 v11, 0x50

    if-ge v6, v11, :cond_a4

    .line 398
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    div-int/lit8 v11, v6, 0x28

    aput v11, v5, v10

    .line 399
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    rem-int/lit8 v11, v6, 0x28

    aput v11, v5, v9

    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_58

    .line 401
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_a4
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    aput v11, v5, v10

    .line 402
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    add-int/lit8 v11, v6, -0x50

    aput v11, v5, v9

    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_58

    .line 405
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_b1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    aput v6, v5, v10

    goto :goto_58

    .line 414
    .end local v3    # "j":I
    .end local v6    # "retval":I
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_b6
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    return-object v11

    :cond_bb
    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_5a
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v13, 0x2e

    .line 425
    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 426
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_92

    .line 427
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v9

    .line 428
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 430
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 431
    .local v1, "fromPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v4, :cond_8c

    .line 432
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_51

    .line 434
    if-eqz v1, :cond_21

    .line 435
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 437
    :cond_21
    sub-int v9, v2, v1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    if-le v9, v10, :cond_58

    .line 438
    new-instance v0, Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x7

    const/16 v12, 0x8

    invoke-static {v9, v1, v10, v11, v12}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/math/BigInteger;-><init>([B)V

    .line 439
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_54

    .line 442
    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-wide/16 v10, 0x50

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 467
    .end local v0    # "big":Ljava/math/BigInteger;
    :goto_4f
    add-int/lit8 v1, v2, 0x1

    .line 431
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 445
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 448
    .end local v0    # "big":Ljava/math/BigInteger;
    :cond_58
    const/4 v5, 0x0

    .line 449
    .local v5, "retval":I
    move v3, v1

    .local v3, "j":I
    :goto_5a
    if-gt v3, v2, :cond_68

    .line 450
    shl-int/lit8 v5, v5, 0x7

    .line 451
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v9, v3

    .line 452
    .local v8, "tmp":B
    and-int/lit8 v9, v8, 0x7f

    or-int/2addr v5, v9

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 454
    .end local v8    # "tmp":B
    :cond_68
    if-nez v1, :cond_88

    .line 455
    const/16 v9, 0x50

    if-ge v5, v9, :cond_7c

    .line 456
    div-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    rem-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 460
    :cond_7c
    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    add-int/lit8 v9, v5, -0x50

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 464
    :cond_88
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 470
    .end local v3    # "j":I
    .end local v5    # "retval":I
    :cond_8c
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 471
    iput-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 473
    .end local v1    # "fromPos":I
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_92
    return-object v6
.end method
