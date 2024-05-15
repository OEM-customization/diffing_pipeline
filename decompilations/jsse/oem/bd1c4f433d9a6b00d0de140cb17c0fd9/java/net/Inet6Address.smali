.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Inet6Address$Inet6AddressHolder;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field private static final FIELDS_OFFSET:J

.field static final INADDRSZ:I = 0x10

.field private static final INT16SZ:I = 0x2

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private final transient holder6:Ljava/net/Inet6Address$Inet6AddressHolder;


# direct methods
.method static synthetic -wrap0([BLjava/net/NetworkInterface;)I
    .registers 3
    .param p0, "thisAddr"    # [B
    .param p1, "ifc"    # Ljava/net/NetworkInterface;

    .prologue
    invoke-static {p0, p1}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 183
    new-instance v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "::"

    new-array v4, v5, [B

    fill-array-data v4, :array_84

    invoke-direct {v2, v3, v4, v6}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    .line 182
    sput-object v2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 186
    new-instance v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "ip6-localhost"

    .line 187
    new-array v4, v5, [B

    fill-array-data v4, :array_90

    .line 186
    invoke-direct {v2, v3, v4, v6}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 572
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    .line 573
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "ipaddress"

    const-class v5, [B

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v6

    .line 574
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_id"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 575
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_id_set"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 576
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_ifname_set"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 577
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "ifname"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 572
    sput-object v2, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 585
    :try_start_66
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    .line 587
    .local v1, "unsafe":Lsun/misc/Unsafe;
    const-class v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "holder6"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 586
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    .line 588
    sput-object v1, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_7b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_66 .. :try_end_7b} :catch_7c

    .line 178
    return-void

    .line 589
    :catch_7c
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 183
    nop

    :array_84
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 187
    :array_90
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 384
    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v2, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 385
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {v0, p0, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 386
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 398
    new-instance v1, Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {v1, p0, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 400
    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_f} :catch_10

    .line 402
    :goto_f
    return-void

    .line 401
    :catch_10
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_f
.end method

.method constructor <init>(Ljava/lang/String;[BI)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "scope_id"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 392
    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, p1, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 393
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 394
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BI)V

    .line 395
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 410
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 411
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    .line 412
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 405
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 406
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    .line 407
    return-void
.end method

.method private deriveNumericScope(Ljava/lang/String;)I
    .registers 8
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_23

    move-result-object v1

    .line 555
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 556
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 557
    .local v2, "ifc":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v3, v2}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v3

    return v3

    .line 552
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "ifc":Ljava/net/NetworkInterface;
    :catch_23
    move-exception v0

    .line 553
    .local v0, "e":Ljava/net/SocketException;
    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "could not enumerate local network interfaces"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 561
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2d
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No matching address found for interface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static deriveNumericScope([BLjava/net/NetworkInterface;)I
    .registers 7
    .param p0, "thisAddr"    # [B
    .param p1, "ifc"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 531
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 532
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 533
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_4

    move-object v2, v0

    .line 536
    check-cast v2, Ljava/net/Inet6Address;

    .line 538
    .local v2, "ia6_addr":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v3

    invoke-static {p0, v3}, Ljava/net/Inet6Address;->isDifferentLocalAddressType([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 543
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    return v3

    .line 545
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ia6_addr":Ljava/net/Inet6Address;
    :cond_26
    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "no scope_id found"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 471
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2a

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_2a

    .line 473
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 476
    :cond_2a
    if-eqz p1, :cond_37

    .line 477
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 478
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    .line 481
    :cond_37
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 438
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2a

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_2a

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 443
    :cond_2a
    if-eqz p1, :cond_37

    .line 444
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 445
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-object v0

    .line 448
    :cond_37
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .registers 7
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 500
    const/4 v0, -0x1

    .line 501
    .local v0, "family":I
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BLjava/net/NetworkInterface;)V

    .line 503
    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_13

    .line 504
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 506
    :cond_13
    iget-object v1, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    invoke-virtual {v1, p1, v0}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 507
    return-void
.end method

.method private initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 9
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 489
    .local v1, "nif":Ljava/net/NetworkInterface;
    if-nez v1, :cond_3b

    .line 490
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_20
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_20} :catch_20

    .line 493
    .end local v1    # "nif":Ljava/net/NetworkInterface;
    :catch_20
    move-exception v0

    .line 494
    .local v0, "e":Ljava/net/SocketException;
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SocketException thrown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "nif":Ljava/net/NetworkInterface;
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_3b .. :try_end_3e} :catch_20

    .line 496
    return-void
.end method

.method private static isDifferentLocalAddressType([B[B)Z
    .registers 4
    .param p0, "thisAddr"    # [B
    .param p1, "otherAddr"    # [B

    .prologue
    const/4 v1, 0x0

    .line 518
    invoke-static {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 519
    invoke-static {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 518
    if-eqz v0, :cond_10

    .line 520
    return v1

    .line 522
    :cond_10
    invoke-static {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 523
    invoke-static {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 522
    if-eqz v0, :cond_1f

    .line 524
    return v1

    .line 526
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method static isLinkLocalAddress([B)Z
    .registers 5
    .param p0, "ipaddress"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 737
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_15

    .line 738
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_13

    .line 737
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 738
    goto :goto_12

    :cond_15
    move v0, v1

    .line 737
    goto :goto_12
.end method

.method static isSiteLocalAddress([B)Z
    .registers 5
    .param p0, "ipaddress"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 756
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_15

    .line 757
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_13

    .line 756
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 757
    goto :goto_12

    :cond_15
    move v0, v1

    .line 756
    goto :goto_12
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .registers 5
    .param p0, "src"    # [B

    .prologue
    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 942
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v2, 0x8

    if-ge v0, v2, :cond_32

    .line 943
    shl-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    .line 944
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 943
    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2f

    .line 946
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 949
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 16
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    .line 601
    const/4 v5, 0x0

    .line 604
    .local v5, "scope_ifname":Ljava/net/NetworkInterface;
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v12, Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eq v1, v12, :cond_1c

    .line 605
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v7, "invalid address type"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_1c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v10

    .line 609
    .local v10, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "ipaddress"

    invoke-virtual {v10, v1, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 610
    .local v2, "ipaddress":[B
    const-string/jumbo v1, "scope_id"

    const/4 v12, -0x1

    invoke-virtual {v10, v1, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 611
    .local v3, "scope_id":I
    const-string/jumbo v1, "scope_id_set"

    invoke-virtual {v10, v1, v13}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    .line 612
    .local v4, "scope_id_set":Z
    const-string/jumbo v1, "scope_ifname_set"

    invoke-virtual {v10, v1, v13}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    .line 613
    .local v6, "scope_ifname_set":Z
    const-string/jumbo v1, "ifname"

    invoke-virtual {v10, v1, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 615
    .local v11, "ifname":Ljava/lang/String;
    if-eqz v11, :cond_5e

    const-string/jumbo v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5e

    .line 617
    :try_start_55
    invoke-static {v11}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_58
    .catch Ljava/net/SocketException; {:try_start_55 .. :try_end_58} :catch_af

    move-result-object v5

    .line 618
    .local v5, "scope_ifname":Ljava/net/NetworkInterface;
    if-nez v5, :cond_84

    .line 621
    const/4 v4, 0x0

    .line 622
    .local v4, "scope_id_set":Z
    const/4 v6, 0x0

    .line 623
    .local v6, "scope_ifname_set":Z
    const/4 v3, 0x0

    .line 639
    .end local v4    # "scope_id_set":Z
    .end local v5    # "scope_ifname":Ljava/net/NetworkInterface;
    .end local v6    # "scope_ifname_set":Z
    :cond_5e
    :goto_5e
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ipaddress":[B
    check-cast v2, [B

    .line 642
    .restart local v2    # "ipaddress":[B
    array-length v1, v2

    const/16 v12, 0x10

    if-eq v1, v12, :cond_8c

    .line 643
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid address length: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 644
    array-length v12, v2

    .line 643
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    .local v4, "scope_id_set":Z
    .restart local v5    # "scope_ifname":Ljava/net/NetworkInterface;
    .local v6, "scope_ifname_set":Z
    :cond_84
    const/4 v6, 0x1

    .line 627
    .local v6, "scope_ifname_set":Z
    :try_start_85
    invoke-static {v2, v5}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I
    :try_end_88
    .catch Ljava/net/UnknownHostException; {:try_start_85 .. :try_end_88} :catch_8a
    .catch Ljava/net/SocketException; {:try_start_85 .. :try_end_88} :catch_af

    move-result v3

    goto :goto_5e

    .line 628
    :catch_8a
    move-exception v9

    .local v9, "e":Ljava/net/UnknownHostException;
    goto :goto_5e

    .line 647
    .end local v4    # "scope_id_set":Z
    .end local v5    # "scope_ifname":Ljava/net/NetworkInterface;
    .end local v6    # "scope_ifname_set":Z
    .end local v9    # "e":Ljava/net/UnknownHostException;
    :cond_8c
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v1

    sget v12, Landroid/system/OsConstants;->AF_INET6:I

    if-eq v1, v12, :cond_a1

    .line 648
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v7, "invalid address family type"

    invoke-direct {v1, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_a1
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address$Inet6AddressHolder;)V

    .line 655
    .local v0, "h":Ljava/net/Inet6Address$Inet6AddressHolder;
    sget-object v1, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    invoke-virtual {v1, p0, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 656
    return-void

    .line 634
    .end local v0    # "h":Ljava/net/Inet6Address$Inet6AddressHolder;
    .restart local v4    # "scope_id_set":Z
    :catch_af
    move-exception v8

    .local v8, "e":Ljava/net/SocketException;
    goto :goto_5e
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "ifname":Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    if-eqz v2, :cond_15

    .line 669
    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 672
    .end local v0    # "ifname":Ljava/lang/String;
    :cond_15
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 673
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v2, "ipaddress"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    const-string/jumbo v2, "scope_id"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 675
    const-string/jumbo v2, "scope_id_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 676
    const-string/jumbo v2, "scope_ifname_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 677
    const-string/jumbo v2, "ifname"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    .line 679
    return-void

    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 908
    if-eqz p1, :cond_8

    instance-of v1, p1, Ljava/net/Inet6Address;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 909
    :cond_8
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 911
    check-cast v0, Ljava/net/Inet6Address;

    .line 913
    .local v0, "inetAddr":Ljava/net/Inet6Address;
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddress()[B
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 877
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()I
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    return v0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isAnyLocalAddress()Z

    move-result v0

    return v0
.end method

.method public isIPv4CompatibleAddress()Z
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isIPv4CompatibleAddress()Z

    move-result v0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLinkLocalAddress()Z

    move-result v0

    return v0
.end method

.method public isLoopbackAddress()Z
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLoopbackAddress()Z

    move-result v0

    return v0
.end method

.method public isMCGlobal()Z
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCGlobal()Z

    move-result v0

    return v0
.end method

.method public isMCLinkLocal()Z
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCLinkLocal()Z

    move-result v0

    return v0
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCNodeLocal()Z

    move-result v0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCOrgLocal()Z

    move-result v0

    return v0
.end method

.method public isMCSiteLocal()Z
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCSiteLocal()Z

    move-result v0

    return v0
.end method

.method public isMulticastAddress()Z
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMulticastAddress()Z

    move-result v0

    return v0
.end method

.method public isSiteLocalAddress()Z
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isSiteLocalAddress()Z

    move-result v0

    return v0
.end method
