.class public Lsun/security/x509/IPAddressName;
.super Ljava/lang/Object;
.source "IPAddressName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final blacklist MASKSIZE:I = 0x10


# instance fields
.field private blacklist address:[B

.field private blacklist isIPv4:Z

.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_62

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    const-string v3, "Invalid IPAddress: "

    if-eq v0, v2, :cond_4d

    .line 135
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2a

    .line 139
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_37

    .line 141
    :cond_2a
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_38

    .line 143
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    .line 144
    iput-boolean v1, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 148
    :goto_37
    return-void

    .line 146
    :cond_38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IPAddress cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/IPAddressName;-><init>([B)V

    .line 83
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "address"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    goto :goto_24

    .line 99
    :cond_d
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_18

    goto :goto_20

    .line 102
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid IPAddressName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_20
    :goto_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_27

    .line 98
    :cond_24
    :goto_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 104
    :goto_27
    iput-object p1, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 105
    return-void
.end method

.method private blacklist parseIPv4(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 160
    .local v0, "slashNdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 161
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/IPAddressName;->address:[B

    goto :goto_41

    .line 163
    :cond_14
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 166
    add-int/lit8 v1, v0, 0x1

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 170
    .local v1, "mask":[B
    nop

    .line 171
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 173
    .local v3, "host":[B
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    const/4 v5, 0x4

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v1, v2, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .end local v1    # "mask":[B
    .end local v3    # "host":[B
    :goto_41
    return-void
.end method

.method private blacklist parseIPv6(Ljava/lang/String;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 190
    .local v0, "slashNdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 191
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/IPAddressName;->address:[B

    goto :goto_61

    .line 193
    :cond_14
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 194
    nop

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 196
    .local v2, "base":[B
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    const/16 v4, 0x10

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, "prefixLen":I
    if-ltz v1, :cond_62

    const/16 v3, 0x80

    if-gt v1, v3, :cond_62

    .line 206
    new-instance v5, Lsun/security/util/BitArray;

    invoke-direct {v5, v3}, Lsun/security/util/BitArray;-><init>(I)V

    move-object v3, v5

    .line 209
    .local v3, "bitArray":Lsun/security/util/BitArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    if-ge v5, v1, :cond_4f

    .line 210
    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lsun/security/util/BitArray;->set(IZ)V

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 211
    .end local v5    # "i":I
    :cond_4f
    invoke-virtual {v3}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v5

    .line 214
    .local v5, "maskArray":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54
    if-ge v6, v4, :cond_61

    .line 215
    iget-object v7, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int/lit8 v8, v6, 0x10

    aget-byte v9, v5, v6

    aput-byte v9, v7, v8

    .line 214
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 217
    .end local v1    # "prefixLen":I
    .end local v2    # "base":[B
    .end local v3    # "bitArray":Lsun/security/util/BitArray;
    .end local v5    # "maskArray":[B
    .end local v6    # "i":I
    :cond_61
    :goto_61
    return-void

    .line 201
    .restart local v1    # "prefixLen":I
    .restart local v2    # "base":[B
    :cond_62
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IPv6Address prefix length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") in out of valid range [0,128]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 14
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 397
    if-nez p1, :cond_5

    .line 398
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto/16 :goto_122

    .line 399
    .end local v0    # "constraintType":I
    :cond_5
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_f

    .line 400
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_122

    .line 401
    .end local v0    # "constraintType":I
    :cond_f
    move-object v0, p1

    check-cast v0, Lsun/security/x509/IPAddressName;

    invoke-virtual {v0, p0}, Lsun/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 402
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto/16 :goto_122

    .line 404
    .end local v0    # "constraintType":I
    :cond_1b
    move-object v0, p1

    check-cast v0, Lsun/security/x509/IPAddressName;

    .line 405
    .local v0, "otherName":Lsun/security/x509/IPAddressName;
    iget-object v1, v0, Lsun/security/x509/IPAddressName;->address:[B

    .line 406
    .local v1, "otherAddress":[B
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-ne v2, v3, :cond_2d

    .line 408
    const/4 v2, 0x3

    move v0, v2

    .local v2, "constraintType":I
    goto/16 :goto_122

    .line 409
    .end local v2    # "constraintType":I
    :cond_2d
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-eq v2, v3, :cond_41

    :cond_37
    array-length v2, v1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_d2

    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-ne v2, v4, :cond_d2

    .line 413
    :cond_41
    const/4 v2, 0x1

    .line 414
    .local v2, "otherSubsetOfThis":Z
    const/4 v3, 0x1

    .line 415
    .local v3, "thisSubsetOfOther":Z
    const/4 v4, 0x0

    .line 416
    .local v4, "thisEmpty":Z
    const/4 v5, 0x0

    .line 417
    .local v5, "otherEmpty":Z
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    .line 418
    .local v6, "maskOffset":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    if-ge v7, v6, :cond_b6

    .line 419
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v8, v7

    add-int v10, v7, v6

    aget-byte v10, v8, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v8, v8, v7

    if-eq v9, v8, :cond_5c

    .line 420
    const/4 v4, 0x1

    .line 421
    :cond_5c
    aget-byte v8, v1, v7

    add-int v9, v7, v6

    aget-byte v9, v1, v9

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aget-byte v9, v1, v7

    if-eq v8, v9, :cond_69

    .line 422
    const/4 v5, 0x1

    .line 423
    :cond_69
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v9, v7, v6

    aget-byte v9, v8, v9

    add-int v10, v7, v6

    aget-byte v10, v1, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    add-int v10, v7, v6

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_8d

    aget-byte v9, v8, v7

    add-int v10, v7, v6

    aget-byte v10, v8, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v10, v1, v7

    add-int v11, v7, v6

    aget-byte v8, v8, v11

    and-int/2addr v8, v10

    int-to-byte v8, v8

    if-eq v9, v8, :cond_8e

    .line 425
    :cond_8d
    const/4 v2, 0x0

    .line 427
    :cond_8e
    add-int v8, v7, v6

    aget-byte v8, v1, v8

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v7, v6

    aget-byte v10, v9, v10

    and-int/2addr v8, v10

    int-to-byte v8, v8

    add-int v10, v7, v6

    aget-byte v10, v1, v10

    if-ne v8, v10, :cond_b2

    aget-byte v8, v1, v7

    add-int v10, v7, v6

    aget-byte v10, v1, v10

    and-int/2addr v8, v10

    int-to-byte v8, v8

    aget-byte v9, v9, v7

    add-int v10, v7, v6

    aget-byte v10, v1, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    if-eq v8, v9, :cond_b3

    .line 429
    :cond_b2
    const/4 v3, 0x0

    .line 418
    :cond_b3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 432
    .end local v7    # "i":I
    :cond_b6
    if-nez v4, :cond_c5

    if-eqz v5, :cond_bb

    goto :goto_c5

    .line 439
    :cond_bb
    if-eqz v2, :cond_bf

    .line 440
    const/4 v7, 0x1

    .local v7, "constraintType":I
    goto :goto_d0

    .line 441
    .end local v7    # "constraintType":I
    :cond_bf
    if-eqz v3, :cond_c3

    .line 442
    const/4 v7, 0x2

    .restart local v7    # "constraintType":I
    goto :goto_d0

    .line 444
    .end local v7    # "constraintType":I
    :cond_c3
    const/4 v7, 0x3

    .restart local v7    # "constraintType":I
    goto :goto_d0

    .line 433
    .end local v7    # "constraintType":I
    :cond_c5
    :goto_c5
    if-eqz v4, :cond_cb

    if-eqz v5, :cond_cb

    .line 434
    const/4 v7, 0x0

    .restart local v7    # "constraintType":I
    goto :goto_d0

    .line 435
    .end local v7    # "constraintType":I
    :cond_cb
    if-eqz v4, :cond_cf

    .line 436
    const/4 v7, 0x2

    .restart local v7    # "constraintType":I
    goto :goto_d0

    .line 438
    .end local v7    # "constraintType":I
    :cond_cf
    const/4 v7, 0x1

    .line 445
    .end local v2    # "otherSubsetOfThis":Z
    .end local v3    # "thisSubsetOfOther":Z
    .end local v4    # "thisEmpty":Z
    .end local v5    # "otherEmpty":Z
    .end local v6    # "maskOffset":I
    .restart local v7    # "constraintType":I
    :goto_d0
    move v0, v7

    goto :goto_122

    .end local v7    # "constraintType":I
    :cond_d2
    array-length v2, v1

    if-eq v2, v3, :cond_105

    array-length v2, v1

    if-ne v2, v4, :cond_d9

    goto :goto_105

    .line 459
    :cond_d9
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v2

    if-eq v5, v3, :cond_e5

    array-length v2, v2

    if-ne v2, v4, :cond_e2

    goto :goto_e5

    .line 473
    :cond_e2
    const/4 v2, 0x3

    move v0, v2

    .local v2, "constraintType":I
    goto :goto_122

    .line 461
    .end local v2    # "constraintType":I
    :cond_e5
    :goto_e5
    const/4 v2, 0x0

    .line 462
    .local v2, "i":I
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 463
    .local v3, "maskOffset":I
    :goto_eb
    if-ge v2, v3, :cond_fe

    .line 465
    aget-byte v4, v1, v2

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v6, v2, v3

    aget-byte v6, v5, v6

    and-int/2addr v4, v6

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_fb

    .line 466
    goto :goto_fe

    .line 463
    :cond_fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 468
    :cond_fe
    :goto_fe
    if-ne v2, v3, :cond_102

    .line 469
    const/4 v4, 0x1

    .local v4, "constraintType":I
    goto :goto_103

    .line 471
    .end local v4    # "constraintType":I
    :cond_102
    const/4 v4, 0x3

    .line 472
    .end local v2    # "i":I
    .end local v3    # "maskOffset":I
    .restart local v4    # "constraintType":I
    :goto_103
    move v0, v4

    goto :goto_122

    .line 447
    .end local v4    # "constraintType":I
    :cond_105
    :goto_105
    const/4 v2, 0x0

    .line 448
    .restart local v2    # "i":I
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 449
    .restart local v3    # "maskOffset":I
    :goto_109
    if-ge v2, v3, :cond_11c

    .line 452
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v4, v4, v2

    add-int v5, v2, v3

    aget-byte v5, v1, v5

    and-int/2addr v4, v5

    aget-byte v5, v1, v2

    if-eq v4, v5, :cond_119

    .line 453
    goto :goto_11c

    .line 449
    :cond_119
    add-int/lit8 v2, v2, 0x1

    goto :goto_109

    .line 455
    :cond_11c
    :goto_11c
    if-ne v2, v3, :cond_120

    .line 456
    const/4 v4, 0x2

    .restart local v4    # "constraintType":I
    goto :goto_121

    .line 458
    .end local v4    # "constraintType":I
    :cond_120
    const/4 v4, 0x3

    .line 459
    .end local v2    # "i":I
    .end local v3    # "maskOffset":I
    .restart local v4    # "constraintType":I
    :goto_121
    move v0, v4

    .line 476
    .end local v1    # "otherAddress":[B
    .end local v4    # "constraintType":I
    .local v0, "constraintType":I
    :goto_122
    return v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 234
    return-void
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 316
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 317
    return v0

    .line 319
    :cond_4
    instance-of v1, p1, Lsun/security/x509/IPAddressName;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 320
    return v2

    .line 322
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/IPAddressName;

    .line 323
    .local v1, "otherName":Lsun/security/x509/IPAddressName;
    iget-object v3, v1, Lsun/security/x509/IPAddressName;->address:[B

    .line 325
    .local v3, "other":[B
    array-length v4, v3

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v5

    if-eq v4, v6, :cond_16

    .line 326
    return v2

    .line 328
    :cond_16
    array-length v4, v5

    const/16 v6, 0x8

    if-eq v4, v6, :cond_26

    array-length v4, v5

    const/16 v6, 0x20

    if-ne v4, v6, :cond_21

    goto :goto_26

    .line 347
    :cond_21
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 331
    :cond_26
    :goto_26
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 332
    .local v4, "maskLen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    if-ge v5, v4, :cond_46

    .line 333
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v7, v6, v5

    add-int v8, v5, v4

    aget-byte v6, v6, v8

    and-int/2addr v6, v7

    int-to-byte v6, v6

    .line 334
    .local v6, "maskedThis":B
    aget-byte v7, v3, v5

    add-int v8, v5, v4

    aget-byte v8, v3, v8

    and-int/2addr v7, v8

    int-to-byte v7, v7

    .line 335
    .local v7, "maskedOther":B
    if-eq v6, v7, :cond_43

    .line 336
    return v2

    .line 332
    .end local v6    # "maskedThis":B
    .end local v7    # "maskedOther":B
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 340
    .end local v5    # "i":I
    :cond_46
    move v5, v4

    .restart local v5    # "i":I
    :goto_47
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v7, v6

    if-ge v5, v7, :cond_56

    .line 341
    aget-byte v6, v6, v5

    aget-byte v7, v3, v5

    if-eq v6, v7, :cond_53

    .line 342
    return v2

    .line 340
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 343
    .end local v5    # "i":I
    :cond_56
    return v0
.end method

.method public blacklist getBytes()[B
    .registers 2

    .line 307
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 258
    return-object v0

    .line 260
    :cond_5
    iget-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 262
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 263
    .local v3, "host":[B
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 265
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v4

    const/16 v6, 0x8

    if-ne v5, v6, :cond_48

    .line 266
    new-array v5, v0, [B

    .line 267
    .local v5, "mask":[B
    invoke-static {v4, v0, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 271
    .end local v3    # "host":[B
    .end local v5    # "mask":[B
    :cond_48
    goto/16 :goto_c6

    .line 273
    :cond_4a
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 274
    .restart local v3    # "host":[B
    iget-object v4, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_c6

    .line 280
    new-array v0, v0, [B

    .line 281
    .local v0, "maskBytes":[B
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_68
    if-ge v2, v4, :cond_75

    .line 282
    add-int/lit8 v5, v2, -0x10

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v2

    aput-byte v6, v0, v5

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 283
    .end local v2    # "i":I
    :cond_75
    new-instance v2, Lsun/security/util/BitArray;

    const/16 v4, 0x80

    invoke-direct {v2, v4, v0}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 285
    .local v2, "ba":Lsun/security/util/BitArray;
    const/4 v5, 0x0

    .line 286
    .local v5, "i":I
    :goto_7d
    if-ge v5, v4, :cond_89

    .line 287
    invoke-virtual {v2, v5}, Lsun/security/util/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_86

    .line 288
    goto :goto_89

    .line 286
    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 290
    :cond_89
    :goto_89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 292
    :goto_9f
    if-ge v5, v4, :cond_c6

    .line 293
    invoke-virtual {v2, v5}, Lsun/security/util/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 294
    :cond_aa
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IPv6 subdomain - set bit "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not contiguous"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "maskBytes":[B
    .end local v2    # "ba":Lsun/security/util/BitArray;
    .end local v3    # "host":[B
    .end local v5    # "i":I
    :cond_c6
    :goto_c6
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 223
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "retval":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v3, v2

    if-ge v1, v3, :cond_e

    .line 360
    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    .end local v1    # "i":I
    :cond_e
    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "subtreeDepth() not defined for IPAddressName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 241
    const-string v0, "IPAddress: "

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    .line 242
    :catch_16
    move-exception v1

    .line 244
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 245
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v2, v0}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
