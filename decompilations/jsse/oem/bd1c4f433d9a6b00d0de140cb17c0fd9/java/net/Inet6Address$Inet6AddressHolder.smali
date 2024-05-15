.class Ljava/net/Inet6Address$Inet6AddressHolder;
.super Ljava/lang/Object;
.source "Inet6Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Inet6Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inet6AddressHolder"
.end annotation


# instance fields
.field ipaddress:[B

.field scope_id:I

.field scope_id_set:Z

.field scope_ifname:Ljava/net/NetworkInterface;

.field scope_ifname_set:Z

.field final synthetic this$0:Ljava/net/Inet6Address;


# direct methods
.method private constructor <init>(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/Inet6Address;

    .prologue
    .line 191
    iput-object p1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->this$0:Ljava/net/Inet6Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/Inet6Address;
    .param p2, "-this1"    # Ljava/net/Inet6Address$Inet6AddressHolder;

    .prologue
    invoke-direct {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V
    .registers 7
    .param p1, "this$0"    # Ljava/net/Inet6Address;
    .param p2, "ipaddress"    # [B
    .param p3, "scope_id"    # I
    .param p4, "scope_id_set"    # Z
    .param p5, "ifname"    # Ljava/net/NetworkInterface;
    .param p6, "scope_ifname_set"    # Z

    .prologue
    .line 195
    iput-object p1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->this$0:Ljava/net/Inet6Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    .line 200
    iput p3, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 201
    iput-boolean p4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 202
    iput-boolean p6, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 203
    iput-object p5, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address$Inet6AddressHolder;)V
    .registers 8
    .param p1, "this$0"    # Ljava/net/Inet6Address;
    .param p2, "ipaddress"    # [B
    .param p3, "scope_id"    # I
    .param p4, "scope_id_set"    # Z
    .param p5, "ifname"    # Ljava/net/NetworkInterface;
    .param p6, "scope_ifname_set"    # Z
    .param p7, "-this6"    # Ljava/net/Inet6Address$Inet6AddressHolder;

    .prologue
    invoke-direct/range {p0 .. p6}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 279
    instance-of v1, p1, Ljava/net/Inet6Address$Inet6AddressHolder;

    if-nez v1, :cond_6

    .line 280
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 282
    check-cast v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 284
    .local v0, "that":Ljava/net/Inet6Address$Inet6AddressHolder;
    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    iget-object v2, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x10

    .line 288
    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    if-eqz v4, :cond_21

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "hash":I
    const/4 v2, 0x0

    .line 292
    .local v2, "i":I
    :goto_8
    if-ge v2, v6, :cond_20

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "j":I
    const/4 v0, 0x0

    .line 295
    .local v0, "component":I
    :goto_c
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1e

    if-ge v2, v6, :cond_1e

    .line 296
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v5, v5, v2

    add-int v0, v4, v5

    .line 297
    add-int/lit8 v3, v3, 0x1

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 300
    :cond_1e
    add-int/2addr v1, v0

    goto :goto_8

    .line 302
    .end local v0    # "component":I
    .end local v3    # "j":I
    :cond_20
    return v1

    .line 305
    .end local v1    # "hash":I
    .end local v2    # "i":I
    :cond_21
    const/4 v4, 0x0

    return v4
.end method

.method init([BI)V
    .registers 4
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    .line 246
    if-lez p2, :cond_a

    .line 247
    iput p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 250
    :cond_a
    return-void
.end method

.method init([BLjava/net/NetworkInterface;)V
    .registers 5
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    .line 257
    if-eqz p2, :cond_14

    .line 258
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v0, p2}, Ljava/net/Inet6Address;->-wrap0([BLjava/net/NetworkInterface;)I

    move-result v0

    iput v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 259
    iput-boolean v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 260
    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    .line 261
    iput-boolean v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 263
    :cond_14
    return-void
.end method

.method isAnyLocalAddress()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "test":B
    const/4 v0, 0x0

    .end local v1    # "test":B
    .local v0, "i":I
    :goto_3
    const/16 v3, 0x10

    if-ge v0, v3, :cond_10

    .line 328
    iget-object v3, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v3, v3, v0

    or-int/2addr v3, v1

    int-to-byte v1, v3

    .line 327
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 330
    .end local v1    # "test":B
    :cond_10
    if-nez v1, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method isIPv4CompatibleAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    .line 311
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    .line 312
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    .line 313
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    .line 314
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    .line 315
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    .line 316
    return v3

    .line 318
    :cond_59
    return v2
.end method

.method isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_19

    .line 343
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    .line 342
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 343
    goto :goto_16

    :cond_19
    move v0, v1

    .line 342
    goto :goto_16
.end method

.method isLoopbackAddress()Z
    .registers 7

    .prologue
    const/16 v5, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "test":B
    const/4 v0, 0x0

    .end local v1    # "test":B
    .local v0, "i":I
    :goto_6
    if-ge v0, v5, :cond_11

    .line 336
    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v4, v4, v0

    or-int/2addr v4, v1

    int-to-byte v1, v4

    .line 335
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 338
    .end local v1    # "test":B
    :cond_11
    if-nez v1, :cond_1a

    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v4, v4, v5

    if-ne v4, v2, :cond_1a

    :goto_19
    return v2

    :cond_1a
    move v2, v3

    goto :goto_19
.end method

.method isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 353
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_19

    .line 354
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

    if-ne v2, v3, :cond_17

    .line 353
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 354
    goto :goto_16

    :cond_19
    move v0, v1

    .line 353
    goto :goto_16
.end method

.method isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_18

    .line 364
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 363
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 364
    goto :goto_15

    :cond_18
    move v0, v1

    .line 363
    goto :goto_15
.end method

.method isMCNodeLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_17

    .line 359
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_15

    .line 358
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 359
    goto :goto_14

    :cond_17
    move v0, v1

    .line 358
    goto :goto_14
.end method

.method isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_19

    .line 374
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_17

    .line 373
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 374
    goto :goto_16

    :cond_19
    move v0, v1

    .line 373
    goto :goto_16
.end method

.method isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_18

    .line 369
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

    if-ne v2, v3, :cond_16

    .line 368
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 369
    goto :goto_15

    :cond_18
    move v0, v1

    .line 368
    goto :goto_15
.end method

.method isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_19

    .line 349
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_17

    .line 348
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 349
    goto :goto_16

    :cond_19
    move v0, v1

    .line 348
    goto :goto_16
.end method

.method setAddr([B)V
    .registers 5
    .param p1, "addr"    # [B

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 237
    array-length v0, p1

    if-ne v0, v2, :cond_b

    .line 238
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 240
    :cond_b
    return-void
.end method
