.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$1;,
        Ljava/net/InetAddress$InetAddressHolder;
    }
.end annotation


# static fields
.field private static final BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

.field static final NETID_UNSET:I = 0x0

.field static final impl:Ljava/net/InetAddressImpl;

.field private static final nameService:Lsun/net/spi/nameservice/NameService;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private transient canonicalHostName:Ljava/lang/String;

.field transient holder:Ljava/net/InetAddress$InetAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 256
    new-instance v0, Ljava/net/Inet6AddressImpl;

    invoke-direct {v0}, Ljava/net/Inet6AddressImpl;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    .line 259
    new-instance v0, Ljava/net/InetAddress$1;

    invoke-direct {v0}, Ljava/net/InetAddress$1;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    .line 871
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 893
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 894
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hostName"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 895
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "address"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 896
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "family"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 893
    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 183
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v0}, Ljava/net/InetAddress$InetAddressHolder;-><init>()V

    iput-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    .line 284
    return-void
.end method

.method static anyLocalAddress()Ljava/net/InetAddress;
    .registers 1

    .prologue
    .line 859
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static clearDnsCache()V
    .registers 1

    .prologue
    .line 979
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->clearAddressCache()V

    .line 980
    return-void
.end method

.method static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 944
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_d

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 945
    :cond_d
    return-object p1

    .line 950
    :cond_e
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 787
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method static getAllByName0(Ljava/lang/String;Z)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "authHost"    # Ljava/lang/String;
    .param p1, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1008
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 685
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scopeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 691
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2a

    .line 692
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_2a

    .line 693
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 696
    :cond_2a
    if-eqz p1, :cond_4d

    .line 697
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    .line 698
    new-instance v1, Ljava/net/Inet4Address;

    invoke-direct {v1, p0, p1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v1

    .line 699
    :cond_36
    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 701
    invoke-static {p1}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    .line 702
    .local v0, "newAddr":[B
    if-eqz v0, :cond_47

    .line 703
    new-instance v1, Ljava/net/Inet4Address;

    invoke-direct {v1, p0, v0}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v1

    .line 705
    :cond_47
    new-instance v1, Ljava/net/Inet6Address;

    invoke-direct {v1, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v1

    .line 709
    .end local v0    # "newAddr":[B
    :cond_4d
    new-instance v1, Ljava/net/UnknownHostException;

    const-string/jumbo v2, "addr is of illegal length"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .registers 2
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 743
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 994
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 8
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 566
    const/4 v2, 0x0

    .line 569
    .local v2, "host":Ljava/lang/String;
    :try_start_1
    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lsun/net/spi/nameservice/NameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "host":Ljava/lang/String;
    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lsun/net/spi/nameservice/NameService;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    .line 576
    .local v0, "arr":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 578
    .local v4, "ok":Z
    if-eqz v0, :cond_24

    .line 579
    const/4 v3, 0x0

    .end local v4    # "ok":Z
    .local v3, "i":I
    :goto_16
    if-nez v4, :cond_24

    array-length v5, v0

    if-ge v3, v5, :cond_24

    .line 580
    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 579
    .local v4, "ok":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 585
    .end local v3    # "i":I
    .end local v4    # "ok":Z
    :cond_24
    if-nez v4, :cond_30

    .line 586
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_29} :catch_2b

    move-result-object v2

    .line 587
    return-object v2

    .line 589
    .end local v0    # "arr":[Ljava/net/InetAddress;
    .end local v2    # "host":Ljava/lang/String;
    :catch_2b
    move-exception v1

    .line 590
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 593
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "host":Ljava/lang/String;
    :cond_30
    return-object v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 850
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v1

    iget-object v0, v1, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 851
    .local v0, "local":Ljava/lang/String;
    sget-object v1, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v1, v0, v2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 802
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 923
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 924
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_e

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "numericAddress"    # Ljava/lang/String;

    .prologue
    .line 962
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 963
    :cond_8
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v1

    .line 965
    :cond_b
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 966
    .local v0, "result":Ljava/net/InetAddress;
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 967
    if-nez v0, :cond_2f

    .line 968
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 970
    :cond_2f
    return-object v0
.end method

.method static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 8
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 929
    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28

    .line 930
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 932
    :cond_28
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    .line 933
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v4, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v4, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 934
    const/4 v0, 0x0

    .line 936
    .local v0, "addresses":[Ljava/net/InetAddress;
    :try_start_32
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v1, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_38
    .catch Landroid/system/GaiException; {:try_start_32 .. :try_end_38} :catch_3e

    move-result-object v0

    .line 939
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_39
    if-eqz v0, :cond_3d

    aget-object v3, v0, v6

    :cond_3d
    return-object v3

    .line 937
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :catch_3e
    move-exception v2

    .local v2, "ignored":Landroid/system/GaiException;
    goto :goto_39
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 876
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    sget-object v5, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v4, v5, :cond_16

    .line 877
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "invalid address type"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 879
    :cond_16
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 880
    .local v2, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v4, "hostName"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 881
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v4, "address"

    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    .line 882
    .local v0, "address":I
    const-string/jumbo v4, "family"

    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 883
    .local v1, "family":I
    new-instance v4, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v4, v3, v0, v1}, Ljava/net/InetAddress$InetAddressHolder;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    .line 884
    return-void
.end method

.method private readObjectNoData(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v0, v1, :cond_15

    .line 866
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_15
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v1, v2, :cond_15

    .line 903
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "invalid address type"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_15
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 906
    .local v0, "pf":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "hostName"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget-object v2, v2, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 907
    const-string/jumbo v1, "address"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 908
    const-string/jumbo v1, "family"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 909
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 910
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 911
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()[B
    .registers 2

    .prologue
    .line 604
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 543
    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    .line 545
    :cond_a
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 514
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 515
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 517
    :cond_14
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostName(Z)Ljava/lang/String;
    .registers 3
    .param p1, "check"    # Z

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 623
    const/4 v0, -0x1

    return v0
.end method

.method holder()Ljava/net/InetAddress$InetAddressHolder;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    return-object v0
.end method

.method public isAnyLocalAddress()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .registers 2

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .registers 2

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .registers 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .registers 6
    .param p1, "netif"    # Ljava/net/NetworkInterface;
    .param p2, "ttl"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    if-gez p2, :cond_b

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ttl can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_b
    if-gez p3, :cond_16

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_16
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p3, p1, p2}, Ljava/net/InetAddressImpl;->isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z

    move-result v0

    return v0
.end method

.method public isReachableByICMP(I)Z
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    check-cast v0, Ljava/net/Inet6AddressImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Ljava/net/Inet6AddressImpl;->icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public isSiteLocalAddress()Z
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 657
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "hostName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_27

    .end local v0    # "hostName":Ljava/lang/String;
    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    const-string/jumbo v2, "/"

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local v0    # "hostName":Ljava/lang/String;
    :cond_27
    const-string/jumbo v0, ""

    goto :goto_f
.end method
