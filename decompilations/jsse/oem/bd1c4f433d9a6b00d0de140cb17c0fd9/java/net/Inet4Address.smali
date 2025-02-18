.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress;

.field public static final ANY:Ljava/net/InetAddress;

.field static final INADDRSZ:I = 0x4

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 97
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_2a

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 101
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_30

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    .line 100
    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 105
    new-instance v0, Ljava/net/Inet4Address;

    const-string/jumbo v1, "localhost"

    new-array v2, v2, [B

    fill-array-data v2, :array_36

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    .line 104
    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 88
    return-void

    .line 97
    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 101
    :array_30
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 105
    :array_36
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 109
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 111
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 112
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 128
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 130
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput p2, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 131
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 115
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 117
    if-eqz p2, :cond_3e

    .line 118
    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 119
    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 120
    .local v0, "address":I
    const/4 v1, 0x2

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 121
    const/4 v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 122
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 123
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput v0, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 126
    .end local v0    # "address":I
    :cond_3e
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # [B

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 144
    .local v0, "inet":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 153
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 155
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 361
    if-eqz p1, :cond_1c

    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1c

    .line 362
    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    .line 361
    :cond_1c
    return v0
.end method

.method public getAddress()[B
    .registers 5

    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    .line 316
    .local v1, "address":I
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 318
    .local v0, "addr":[B
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 319
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 320
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 321
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 322
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/Inet4Address;->numericToTextFormat([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 206
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_1a

    .line 207
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    .line 206
    :cond_1a
    return v1
.end method

.method public isLoopbackAddress()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 190
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isMCGlobal()Z
    .registers 7

    .prologue
    const/16 v5, 0xe0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 241
    .local v0, "byteAddr":[B
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v5, :cond_28

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xee

    if-gt v3, v4, :cond_28

    .line 242
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_20

    aget-byte v3, v0, v1

    if-eqz v3, :cond_21

    .line 241
    :cond_20
    :goto_20
    return v1

    .line 243
    :cond_21
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_20

    move v1, v2

    goto :goto_20

    :cond_28
    move v1, v2

    .line 241
    goto :goto_20
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 270
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_1e

    .line 271
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1e

    .line 272
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1e

    const/4 v1, 0x1

    .line 270
    :cond_1e
    return v1
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 302
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_22

    .line 303
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_22

    .line 304
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc3

    if-gt v2, v3, :cond_22

    const/4 v1, 0x1

    .line 302
    :cond_22
    return v1
.end method

.method public isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 286
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_1a

    .line 287
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    .line 286
    :cond_1a
    return v1
.end method

.method public isMulticastAddress()Z
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x20000000

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isSiteLocalAddress()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 223
    .local v0, "address":I
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-eq v3, v4, :cond_22

    .line 224
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xac

    if-ne v3, v4, :cond_23

    .line 225
    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_23

    .line 223
    :cond_22
    :goto_22
    return v1

    .line 226
    :cond_23
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_35

    .line 227
    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_22

    move v1, v2

    goto :goto_22

    :cond_35
    move v1, v2

    .line 226
    goto :goto_22
.end method
