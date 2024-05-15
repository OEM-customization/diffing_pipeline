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
.field public static final greylist core-platform-api ANY:Ljava/net/InetAddress;

.field private static final greylist-max-o FIELDS_OFFSET:J

.field static final greylist-max-o INADDRSZ:I = 0x10

.field private static final greylist-max-o INT16SZ:I = 0x2

.field public static final greylist-max-o core-platform-api LOOPBACK:Ljava/net/InetAddress;

.field private static final greylist-max-o UNSAFE:Lsun/misc/Unsafe;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private final transient greylist holder6:Ljava/net/Inet6Address$Inet6AddressHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 191
    new-instance v0, Ljava/net/Inet6Address;

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_7c

    const-string v3, "::"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 195
    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    const-string v2, "ip6-localhost"

    invoke-direct {v0, v2, v1, v4}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 594
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, [B

    const-string v3, "ipaddress"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "scope_id"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "scope_id_set"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "scope_ifname_set"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "ifname"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 607
    :try_start_5f
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    .line 608
    .local v0, "unsafe":Lsun/misc/Unsafe;
    const-class v1, Ljava/net/Inet6Address;

    const-string v2, "holder6"

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 608
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    .line 610
    sput-object v0, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_73
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5f .. :try_end_73} :catch_75

    .line 613
    .end local v0    # "unsafe":Lsun/misc/Unsafe;
    nop

    .line 614
    return-void

    .line 611
    :catch_75
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_7c
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

    :array_88
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

.method constructor greylist <init>()V
    .registers 4

    .line 400
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 401
    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 402
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {v0, p0, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$1;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 403
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .line 414
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 415
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$1;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 417
    :try_start_b
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_e} :catch_f

    .line 418
    :goto_e
    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_e

    .line 419
    :goto_11
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;[BI)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "scope_id"    # I

    .line 408
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 409
    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, p1, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 410
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$1;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 411
    invoke-virtual {v0, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BI)V

    .line 412
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 431
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$1;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 432
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    .line 433
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 424
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$1;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 425
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    .line 426
    return-void
.end method

.method static synthetic blacklist access$000([BLjava/net/NetworkInterface;)I
    .registers 3
    .param p0, "x0"    # [B
    .param p1, "x1"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 178
    invoke-static {p0, p1}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o deriveNumericScope(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 573
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_3c

    .line 576
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    nop

    .line 577
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 578
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 579
    .local v1, "ifc":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 580
    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v2, v1}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v2

    return v2

    .line 582
    .end local v1    # "ifc":Ljava/net/NetworkInterface;
    :cond_24
    goto :goto_5

    .line 583
    :cond_25
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matching address found for interface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_3c
    move-exception v0

    .line 575
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "could not enumerate local network interfaces"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o deriveNumericScope([BLjava/net/NetworkInterface;)I
    .registers 6
    .param p0, "thisAddr"    # [B
    .param p1, "ifc"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 553
    .local v0, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 554
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 555
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-nez v2, :cond_15

    .line 556
    goto :goto_4

    .line 558
    :cond_15
    move-object v2, v1

    check-cast v2, Ljava/net/Inet6Address;

    .line 560
    .local v2, "ia6_addr":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v3

    invoke-static {p0, v3}, Ljava/net/Inet6Address;->isDifferentLocalAddressType([B[B)Z

    move-result v3

    if-nez v3, :cond_23

    .line 562
    goto :goto_4

    .line 565
    :cond_23
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    return v3

    .line 567
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ia6_addr":Ljava/net/Inet6Address;
    :cond_28
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "no scope_id found"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 492
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_28

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_28

    .line 494
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 497
    :cond_28
    if-eqz p1, :cond_35

    .line 498
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_35

    .line 499
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    .line 502
    :cond_35
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 459
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_28

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_28

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 464
    :cond_28
    if-eqz p1, :cond_35

    .line 465
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_35

    .line 466
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-object v0

    .line 469
    :cond_35
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .registers 7
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 522
    const/4 v0, -0x1

    .line 523
    .local v0, "family":I
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BLjava/net/NetworkInterface;)V

    .line 525
    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    .line 526
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 528
    :cond_d
    iget-object v1, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    invoke-virtual {v1, p1, v0}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    .line 529
    return-void
.end method

.method private greylist-max-o initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 8
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 509
    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 510
    .local v0, "nif":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_b

    .line 513
    invoke-direct {p0, p1, p2, v0}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    .line 516
    .end local v0    # "nif":Ljava/net/NetworkInterface;
    nop

    .line 517
    return-void

    .line 511
    .restart local v0    # "nif":Ljava/net/NetworkInterface;
    :cond_b
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/net/Inet6Address;
    .end local p1    # "hostName":Ljava/lang/String;
    .end local p2    # "addr":[B
    .end local p3    # "ifname":Ljava/lang/String;
    throw v1
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_22} :catch_22

    .line 514
    .end local v0    # "nif":Ljava/net/NetworkInterface;
    .restart local p0    # "this":Ljava/net/Inet6Address;
    .restart local p1    # "hostName":Ljava/lang/String;
    .restart local p2    # "addr":[B
    .restart local p3    # "ifname":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 515
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketException thrown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o isDifferentLocalAddressType([B[B)Z
    .registers 4
    .param p0, "thisAddr"    # [B
    .param p1, "otherAddr"    # [B

    .line 540
    invoke-static {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 541
    invoke-static {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    if-nez v0, :cond_e

    .line 542
    return v1

    .line 544
    :cond_e
    invoke-static {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 545
    invoke-static {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 546
    return v1

    .line 548
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o isLinkLocalAddress([B)Z
    .registers 5
    .param p0, "ipaddress"    # [B

    .line 759
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_13

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_13

    move v0, v2

    :cond_13
    return v0
.end method

.method static greylist-max-o isSiteLocalAddress([B)Z
    .registers 5
    .param p0, "ipaddress"    # [B

    .line 778
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_12

    aget-byte v1, p0, v2

    const/16 v3, 0xc0

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_12

    move v0, v2

    :cond_12
    return v0
.end method

.method static greylist-max-o numericToTextFormat([B)Ljava/lang/String;
    .registers 5
    .param p0, "src"    # [B

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 964
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x8

    if-ge v1, v2, :cond_31

    .line 965
    shl-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v2, v3, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2e

    .line 968
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 971
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 18
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 623
    const/4 v1, 0x0

    .line 626
    .local v1, "scope_ifname":Ljava/net/NetworkInterface;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v0, v2, :cond_af

    .line 630
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 631
    .local v2, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string v0, "ipaddress"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B

    .line 632
    .local v4, "ipaddress":[B
    const/4 v0, -0x1

    const-string v5, "scope_id"

    invoke-virtual {v2, v5, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    .line 633
    .local v5, "scope_id":I
    const-string v0, "scope_id_set"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v7

    .line 634
    .local v7, "scope_id_set":Z
    const-string v0, "scope_ifname_set"

    invoke-virtual {v2, v0, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    .line 635
    .local v6, "scope_ifname_set":Z
    const-string v0, "ifname"

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 637
    .local v3, "ifname":Ljava/lang/String;
    if-eqz v3, :cond_5c

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 639
    :try_start_46
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_4a
    .catch Ljava/net/SocketException; {:try_start_46 .. :try_end_4a} :catch_5b

    move-object v1, v0

    .line 640
    if-nez v1, :cond_52

    .line 643
    const/4 v0, 0x0

    .line 644
    .end local v7    # "scope_id_set":Z
    .local v0, "scope_id_set":Z
    const/4 v6, 0x0

    .line 645
    const/4 v5, 0x0

    move v7, v0

    goto :goto_5c

    .line 647
    .end local v0    # "scope_id_set":Z
    .restart local v7    # "scope_id_set":Z
    :cond_52
    const/4 v6, 0x1

    .line 649
    :try_start_53
    invoke-static {v4, v1}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v0
    :try_end_57
    .catch Ljava/net/UnknownHostException; {:try_start_53 .. :try_end_57} :catch_59
    .catch Ljava/net/SocketException; {:try_start_53 .. :try_end_57} :catch_5b

    .line 654
    .end local v5    # "scope_id":I
    .local v0, "scope_id":I
    move v5, v0

    goto :goto_5c

    .line 650
    .end local v0    # "scope_id":I
    .restart local v5    # "scope_id":I
    :catch_59
    move-exception v0

    goto :goto_5c

    .line 656
    :catch_5b
    move-exception v0

    .line 661
    :cond_5c
    :goto_5c
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 664
    .end local v4    # "ipaddress":[B
    .local v0, "ipaddress":[B
    array-length v4, v0

    const/16 v8, 0x10

    if-ne v4, v8, :cond_95

    .line 669
    invoke-virtual/range {p0 .. p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v4

    sget v8, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v4, v8, :cond_8b

    .line 673
    new-instance v4, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v9, p0

    move-object v10, v0

    move v11, v5

    move v12, v7

    move-object v13, v1

    move v14, v6

    invoke-direct/range {v8 .. v15}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address$1;)V

    .line 677
    .local v4, "h":Ljava/net/Inet6Address$Inet6AddressHolder;
    sget-object v8, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    move-object/from16 v11, p0

    invoke-virtual {v8, v11, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 678
    return-void

    .line 670
    .end local v4    # "h":Ljava/net/Inet6Address$Inet6AddressHolder;
    :cond_8b
    move-object/from16 v11, p0

    new-instance v4, Ljava/io/InvalidObjectException;

    const-string v8, "invalid address family type"

    invoke-direct {v4, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 665
    :cond_95
    move-object/from16 v11, p0

    new-instance v4, Ljava/io/InvalidObjectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid address length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 627
    .end local v0    # "ipaddress":[B
    .end local v2    # "gf":Ljava/io/ObjectInputStream$GetField;
    .end local v3    # "ifname":Ljava/lang/String;
    .end local v5    # "scope_id":I
    .end local v6    # "scope_ifname_set":Z
    .end local v7    # "scope_id_set":Z
    :cond_af
    move-object/from16 v11, p0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "invalid address type"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "ifname":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v1, v1, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    if-eqz v1, :cond_16

    .line 691
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v1, v1, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 692
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 694
    .end local p0    # "this":Ljava/net/Inet6Address;
    :cond_16
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 695
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "ipaddress"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    const-string v2, "scope_id"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 697
    const-string v2, "scope_id_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 698
    const-string v2, "scope_ifname_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 699
    const-string v2, "ifname"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 701
    monitor-exit p0

    return-void

    .line 687
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 930
    if-eqz p1, :cond_13

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-nez v0, :cond_7

    goto :goto_13

    .line 933
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address;

    .line 935
    .local v0, "inetAddr":Ljava/net/Inet6Address;
    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 931
    .end local v0    # "inetAddr":Ljava/net/Inet6Address;
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api getAddress()[B
    .registers 2

    .line 860
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHostAddress()Ljava/lang/String;
    .registers 3

    .line 899
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getScopeId()I
    .registers 2

    .line 872
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    return v0
.end method

.method public whitelist core-platform-api test-api getScopedInterface()Ljava/net/NetworkInterface;
    .registers 2

    .line 883
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 909
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isAnyLocalAddress()Z
    .registers 2

    .line 728
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isAnyLocalAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isIPv4CompatibleAddress()Z
    .registers 2

    .line 948
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isIPv4CompatibleAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isLinkLocalAddress()Z
    .registers 2

    .line 754
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLinkLocalAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isLoopbackAddress()Z
    .registers 2

    .line 741
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLoopbackAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCGlobal()Z
    .registers 2

    .line 793
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCGlobal()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCLinkLocal()Z
    .registers 2

    .line 821
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCLinkLocal()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCNodeLocal()Z
    .registers 2

    .line 807
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCNodeLocal()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCOrgLocal()Z
    .registers 2

    .line 849
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCOrgLocal()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMCSiteLocal()Z
    .registers 2

    .line 835
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCSiteLocal()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isMulticastAddress()Z
    .registers 2

    .line 715
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMulticastAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isSiteLocalAddress()Z
    .registers 2

    .line 773
    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isSiteLocalAddress()Z

    move-result v0

    return v0
.end method
