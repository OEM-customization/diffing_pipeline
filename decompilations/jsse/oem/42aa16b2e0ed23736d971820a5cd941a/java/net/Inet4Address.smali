.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final greylist core-platform-api ALL:Ljava/net/InetAddress;

.field public static final greylist core-platform-api ANY:Ljava/net/InetAddress;

.field static final greylist-max-o INADDRSZ:I = 0x4

.field public static final greylist-max-o core-platform-api LOOPBACK:Ljava/net/InetAddress;

.field private static final whitelist serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 98
    new-instance v0, Ljava/net/Inet4Address;

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 101
    new-instance v0, Ljava/net/Inet4Address;

    new-array v2, v1, [B

    fill-array-data v2, :array_30

    invoke-direct {v0, v3, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 105
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v1, [B

    fill-array-data v1, :array_36

    const-string v2, "localhost"

    invoke-direct {v0, v2, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    nop

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_30
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_36
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor greylist <init>()V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 121
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 123
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 124
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I

    .line 140
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 141
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 143
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput p2, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 144
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .line 126
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 127
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 129
    if-eqz p2, :cond_3e

    .line 130
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3e

    .line 131
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 132
    .local v0, "address":I
    const/4 v1, 0x2

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 133
    const/4 v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 134
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 135
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput v0, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 138
    .end local v0    # "address":I
    :cond_3e
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method static greylist-max-o numericToTextFormat([B)Ljava/lang/String;
    .registers 4
    .param p0, "src"    # [B

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 158
    .local v0, "inet":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 167
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 169
    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 375
    if-eqz p1, :cond_1d

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Ljava/net/InetAddress;

    .line 376
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 375
    :goto_1e
    return v0
.end method

.method public whitelist core-platform-api test-api getAddress()[B
    .registers 5

    .line 329
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 330
    .local v0, "address":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 332
    .local v1, "addr":[B
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 333
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 334
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 335
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 336
    return-object v1
.end method

.method public whitelist core-platform-api test-api getHostAddress()Ljava/lang/String;
    .registers 2

    .line 346
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/Inet4Address;->numericToTextFormat([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 355
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isAnyLocalAddress()Z
    .registers 2

    .line 191
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api isLinkLocalAddress()Z
    .registers 4

    .line 219
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 220
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_1a

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public whitelist core-platform-api test-api isLoopbackAddress()Z
    .registers 5

    .line 203
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 204
    .local v0, "byteAddr":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public whitelist core-platform-api test-api isMCGlobal()Z
    .registers 7

    .line 254
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 255
    .local v0, "byteAddr":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    const/16 v4, 0xe0

    if-lt v2, v4, :cond_26

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0xee

    if-gt v2, v5, :cond_26

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_25

    aget-byte v2, v0, v3

    if-nez v2, :cond_25

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-eqz v2, :cond_26

    :cond_25
    move v1, v3

    :cond_26
    return v1
.end method

.method public whitelist core-platform-api test-api isMCLinkLocal()Z
    .registers 4

    .line 283
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 284
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1e

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1e

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public whitelist core-platform-api test-api isMCNodeLocal()Z
    .registers 2

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCOrgLocal()Z
    .registers 4

    .line 315
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 316
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xef

    if-ne v1, v2, :cond_22

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_22

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc3

    if-gt v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public whitelist core-platform-api test-api isMCSiteLocal()Z
    .registers 5

    .line 299
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 300
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x18

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v3, 0xef

    if-ne v1, v3, :cond_18

    ushr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public whitelist core-platform-api test-api isMulticastAddress()Z
    .registers 3

    .line 181
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x20000000

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist core-platform-api test-api isSiteLocalAddress()Z
    .registers 4

    .line 236
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 237
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-eq v1, v2, :cond_33

    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xac

    if-ne v1, v2, :cond_20

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_33

    :cond_20
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_31

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    return v1
.end method
