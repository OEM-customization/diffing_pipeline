.class public Lsun/security/x509/IPAddressName;
.super Ljava/lang/Object;
.source "IPAddressName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final MASKSIZE:I = 0x10


# instance fields
.field private address:[B

.field private isIPv4:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 129
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "IPAddress cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3d

    .line 132
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3d
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4b

    .line 139
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    .line 140
    iput-boolean v2, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 148
    :goto_4a
    return-void

    .line 141
    :cond_4b
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5a

    .line 143
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_4a

    .line 146
    :cond_5a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/IPAddressName;-><init>([B)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "address"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 98
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 104
    :goto_f
    iput-object p1, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 105
    return-void

    .line 99
    :cond_12
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1c

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_20

    .line 100
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_f

    .line 102
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid IPAddressName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseIPv4(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 159
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, "slashNdx":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 161
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 176
    :goto_15
    return-void

    .line 163
    :cond_16
    const/16 v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 167
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 171
    .local v1, "mask":[B
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 173
    .local v0, "host":[B
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 174
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v1, v4, v3, v5, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_15
.end method

.method private parseIPv6(Ljava/lang/String;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    const/16 v9, 0x10

    const/4 v7, 0x0

    .line 189
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 190
    .local v5, "slashNdx":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_19

    .line 191
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 217
    :cond_18
    return-void

    .line 193
    :cond_19
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 195
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 196
    .local v0, "base":[B
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    .local v4, "prefixLen":I
    if-ltz v4, :cond_3e

    if-le v4, v8, :cond_5f

    .line 201
    :cond_3e
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IPv6Address prefix length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 202
    const-string/jumbo v8, ") in out of valid range [0,128]"

    .line 201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_5f
    new-instance v1, Lsun/security/util/BitArray;

    invoke-direct {v1, v8}, Lsun/security/util/BitArray;-><init>(I)V

    .line 209
    .local v1, "bitArray":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    if-ge v2, v4, :cond_6e

    .line 210
    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Lsun/security/util/BitArray;->set(IZ)V

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 211
    :cond_6e
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    .line 214
    .local v3, "maskArray":[B
    const/4 v2, 0x0

    :goto_73
    if-ge v2, v9, :cond_18

    .line 215
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int/lit8 v7, v2, 0x10

    aget-byte v8, v3, v2

    aput-byte v8, v6, v7

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_73
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 16
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x20

    const/16 v11, 0x8

    .line 397
    if-nez p1, :cond_9

    .line 398
    const/4 v0, -0x1

    .line 476
    .local v0, "constraintType":I
    :goto_8
    return v0

    .line 399
    .end local v0    # "constraintType":I
    :cond_9
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_12

    .line 400
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_8

    .end local v0    # "constraintType":I
    :cond_12
    move-object v9, p1

    .line 401
    check-cast v9, Lsun/security/x509/IPAddressName;

    invoke-virtual {v9, p0}, Lsun/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 402
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_8

    .end local v0    # "constraintType":I
    :cond_1d
    move-object v5, p1

    .line 404
    check-cast v5, Lsun/security/x509/IPAddressName;

    .line 405
    .local v5, "otherName":Lsun/security/x509/IPAddressName;
    iget-object v3, v5, Lsun/security/x509/IPAddressName;->address:[B

    .line 406
    .local v3, "otherAddress":[B
    array-length v9, v3

    if-ne v9, v13, :cond_2c

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    if-ne v9, v13, :cond_2c

    .line 408
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_8

    .line 409
    .end local v0    # "constraintType":I
    :cond_2c
    array-length v9, v3

    if-ne v9, v11, :cond_b7

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    if-ne v9, v11, :cond_b7

    .line 413
    :cond_34
    const/4 v6, 0x1

    .line 414
    .local v6, "otherSubsetOfThis":Z
    const/4 v8, 0x1

    .line 415
    .local v8, "thisSubsetOfOther":Z
    const/4 v7, 0x0

    .line 416
    .local v7, "thisEmpty":Z
    const/4 v4, 0x0

    .line 417
    .local v4, "otherEmpty":Z
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    div-int/lit8 v2, v9, 0x2

    .line 418
    .local v2, "maskOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-ge v1, v2, :cond_dd

    .line 419
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    int-to-byte v9, v9

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v10, v10, v1

    if-eq v9, v10, :cond_53

    .line 420
    const/4 v7, 0x1

    .line 421
    :cond_53
    aget-byte v9, v3, v1

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v10, v3, v1

    if-eq v9, v10, :cond_60

    .line 422
    const/4 v4, 0x1

    .line 423
    :cond_60
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_8c

    .line 424
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v10, v3, v1

    iget-object v11, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v12, v1, v2

    aget-byte v11, v11, v12

    and-int/2addr v10, v11

    int-to-byte v10, v10

    if-eq v9, v10, :cond_8d

    .line 425
    :cond_8c
    const/4 v6, 0x0

    .line 427
    :cond_8d
    add-int v9, v1, v2

    aget-byte v9, v3, v9

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    int-to-byte v9, v9

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    if-ne v9, v10, :cond_b3

    .line 428
    aget-byte v9, v3, v1

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v10, v10, v1

    add-int v11, v1, v2

    aget-byte v11, v3, v11

    and-int/2addr v10, v11

    int-to-byte v10, v10

    if-eq v9, v10, :cond_b4

    .line 429
    :cond_b3
    const/4 v8, 0x0

    .line 418
    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 410
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    .end local v4    # "otherEmpty":Z
    .end local v6    # "otherSubsetOfThis":Z
    .end local v7    # "thisEmpty":Z
    .end local v8    # "thisSubsetOfOther":Z
    :cond_b7
    array-length v9, v3

    if-ne v9, v12, :cond_bf

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    if-eq v9, v12, :cond_34

    .line 445
    :cond_bf
    array-length v9, v3

    if-eq v9, v11, :cond_c5

    array-length v9, v3

    if-ne v9, v12, :cond_103

    .line 447
    :cond_c5
    const/4 v1, 0x0

    .line 448
    .restart local v1    # "i":I
    array-length v9, v3

    div-int/lit8 v2, v9, 0x2

    .line 449
    .restart local v2    # "maskOffset":I
    :goto_c9
    if-ge v1, v2, :cond_d8

    .line 452
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    and-int/2addr v9, v10

    aget-byte v10, v3, v1

    if-eq v9, v10, :cond_fd

    .line 455
    :cond_d8
    if-ne v1, v2, :cond_100

    .line 456
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 432
    .end local v0    # "constraintType":I
    .restart local v4    # "otherEmpty":Z
    .restart local v6    # "otherSubsetOfThis":Z
    .restart local v7    # "thisEmpty":Z
    .restart local v8    # "thisSubsetOfOther":Z
    :cond_dd
    if-nez v7, :cond_e1

    if-eqz v4, :cond_f0

    .line 433
    :cond_e1
    if-eqz v7, :cond_e8

    if-eqz v4, :cond_e8

    .line 434
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 435
    .end local v0    # "constraintType":I
    :cond_e8
    if-eqz v7, :cond_ed

    .line 436
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 438
    .end local v0    # "constraintType":I
    :cond_ed
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 439
    .end local v0    # "constraintType":I
    :cond_f0
    if-eqz v6, :cond_f5

    .line 440
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 441
    .end local v0    # "constraintType":I
    :cond_f5
    if-eqz v8, :cond_fa

    .line 442
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 444
    .end local v0    # "constraintType":I
    :cond_fa
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 449
    .end local v0    # "constraintType":I
    .end local v4    # "otherEmpty":Z
    .end local v6    # "otherSubsetOfThis":Z
    .end local v7    # "thisEmpty":Z
    .end local v8    # "thisSubsetOfOther":Z
    :cond_fd
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 458
    :cond_100
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 459
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_103
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    if-eq v9, v11, :cond_10d

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    if-ne v9, v12, :cond_12f

    .line 461
    :cond_10d
    const/4 v1, 0x0

    .line 462
    .restart local v1    # "i":I
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v9, v9

    div-int/lit8 v2, v9, 0x2

    .line 463
    .restart local v2    # "maskOffset":I
    :goto_113
    if-ge v1, v2, :cond_124

    .line 465
    aget-byte v9, v3, v1

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v10, v10, v1

    if-eq v9, v10, :cond_129

    .line 468
    :cond_124
    if-ne v1, v2, :cond_12c

    .line 469
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 463
    .end local v0    # "constraintType":I
    :cond_129
    add-int/lit8 v1, v1, 0x1

    goto :goto_113

    .line 471
    :cond_12c
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_8

    .line 473
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_12f
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_8
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 234
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 316
    if-ne p0, p1, :cond_5

    .line 317
    return v10

    .line 319
    :cond_5
    instance-of v6, p1, Lsun/security/x509/IPAddressName;

    if-nez v6, :cond_a

    .line 320
    return v9

    :cond_a
    move-object v5, p1

    .line 322
    check-cast v5, Lsun/security/x509/IPAddressName;

    .line 323
    .local v5, "otherName":Lsun/security/x509/IPAddressName;
    iget-object v4, v5, Lsun/security/x509/IPAddressName;->address:[B

    .line 325
    .local v4, "other":[B
    array-length v6, v4

    iget-object v7, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v7, v7

    if-eq v6, v7, :cond_16

    .line 326
    return v9

    .line 328
    :cond_16
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_24

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_59

    .line 331
    :cond_24
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    div-int/lit8 v1, v6, 0x2

    .line 332
    .local v1, "maskLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    if-ge v0, v1, :cond_46

    .line 333
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v0

    iget-object v7, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v8, v0, v1

    aget-byte v7, v7, v8

    and-int/2addr v6, v7

    int-to-byte v3, v6

    .line 334
    .local v3, "maskedThis":B
    aget-byte v6, v4, v0

    add-int v7, v0, v1

    aget-byte v7, v4, v7

    and-int/2addr v6, v7

    int-to-byte v2, v6

    .line 335
    .local v2, "maskedOther":B
    if-eq v3, v2, :cond_43

    .line 336
    return v9

    .line 332
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 340
    .end local v2    # "maskedOther":B
    .end local v3    # "maskedThis":B
    :cond_46
    move v0, v1

    :goto_47
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    if-ge v0, v6, :cond_58

    .line 341
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v0

    aget-byte v7, v4, v0

    if-eq v6, v7, :cond_55

    .line 342
    return v9

    .line 340
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 343
    :cond_58
    return v10

    .line 347
    .end local v0    # "i":I
    .end local v1    # "maskLen":I
    :cond_59
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    return v6
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x80

    const/16 v6, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 257
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 258
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    .line 260
    :cond_f
    iget-boolean v5, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    if-eqz v5, :cond_59

    .line 262
    new-array v1, v8, [B

    .line 263
    .local v1, "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 264
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 265
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_56

    .line 266
    new-array v3, v8, [B

    .line 267
    .local v3, "mask":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 300
    .end local v3    # "mask":[B
    :cond_56
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    .line 273
    .end local v1    # "host":[B
    :cond_59
    new-array v1, v6, [B

    .line 274
    .restart local v1    # "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 276
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    if-ne v5, v10, :cond_56

    .line 280
    new-array v4, v6, [B

    .line 281
    .local v4, "maskBytes":[B
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_73
    if-ge v2, v10, :cond_80

    .line 282
    add-int/lit8 v5, v2, -0x10

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 283
    :cond_80
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v9, v4}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 285
    .local v0, "ba":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    .line 286
    :goto_86
    if-ge v2, v9, :cond_8e

    .line 287
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 290
    :cond_8e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 292
    :goto_aa
    if-ge v2, v9, :cond_56

    .line 293
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 294
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid IPv6 subdomain - set bit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 295
    const-string/jumbo v7, " not contiguous"

    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 292
    :cond_d6
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 359
    .local v1, "retval":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-ge v0, v2, :cond_10

    .line 360
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 362
    :cond_10
    return v1
.end method

.method public subtreeDepth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 489
    const-string/jumbo v1, "subtreeDepth() not defined for IPAddressName"

    .line 488
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 241
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    .line 242
    :catch_19
    move-exception v1

    .line 244
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 245
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
