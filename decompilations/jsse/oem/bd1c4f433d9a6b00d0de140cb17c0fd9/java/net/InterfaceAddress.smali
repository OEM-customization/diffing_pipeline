.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private broadcast:Ljava/net/Inet4Address;

.field private maskLength:S


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "broadcast"    # Ljava/net/Inet4Address;
    .param p3, "netmask"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 50
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 51
    iput-object p2, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 52
    invoke-direct {p0, p3}, Ljava/net/InterfaceAddress;->countPrefixLength(Ljava/net/InetAddress;)S

    move-result v0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 53
    return-void
.end method

.method private countPrefixLength(Ljava/net/InetAddress;)S
    .registers 8
    .param p1, "netmask"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "count":S
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    array-length v4, v3

    .end local v1    # "count":S
    :goto_7
    if-ge v2, v4, :cond_17

    aget-byte v0, v3, v2

    .line 64
    .local v0, "b":B
    :goto_b
    if-eqz v0, :cond_14

    shl-int/lit8 v5, v0, 0x1

    int-to-byte v0, v5

    add-int/lit8 v5, v1, 0x1

    int-to-short v1, v5

    .local v1, "count":S
    goto :goto_b

    .line 63
    .end local v1    # "count":S
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 66
    .end local v0    # "b":B
    :cond_17
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    instance-of v1, p1, Ljava/net/InterfaceAddress;

    if-nez v1, :cond_7

    .line 123
    return v3

    :cond_7
    move-object v0, p1

    .line 125
    check-cast v0, Ljava/net/InterfaceAddress;

    .line 126
    .local v0, "cmp":Ljava/net/InterfaceAddress;
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_18

    iget-object v1, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_16

    move v1, v2

    :goto_13
    if-nez v1, :cond_21

    .line 127
    return v3

    :cond_16
    move v1, v3

    .line 126
    goto :goto_13

    :cond_18
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_13

    .line 128
    :cond_21
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v1, :cond_2f

    iget-object v1, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v1, :cond_2d

    move v1, v2

    :goto_2a
    if-nez v1, :cond_38

    .line 129
    return v3

    :cond_2d
    move v1, v3

    .line 128
    goto :goto_2a

    :cond_2f
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2a

    .line 130
    :cond_38
    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    iget-short v4, v0, Ljava/net/InterfaceAddress;->maskLength:S

    if-eq v1, v4, :cond_3f

    .line 131
    return v3

    .line 132
    :cond_3f
    return v2
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .registers 2

    .prologue
    .line 103
    iget-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v1

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    add-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
