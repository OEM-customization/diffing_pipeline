.class Ljava/net/InetSocketAddress$InetSocketAddressHolder;
.super Ljava/lang/Object;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InetSocketAddressHolder"
.end annotation


# instance fields
.field private greylist-max-o addr:Ljava/net/InetAddress;

.field private greylist-max-o hostname:Ljava/lang/String;

.field private greylist-max-o port:I


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    .line 68
    iput p3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/net/InetAddress;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/net/InetSocketAddress$1;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    return-void
.end method

.method static synthetic blacklist access$100(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getPort()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$500(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$700(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z
    .registers 2
    .param p0, "x0"    # Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 57
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 76
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method private greylist-max-o getHostName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 81
    return-object v0

    .line 82
    :cond_5
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_e

    .line 83
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getHostString()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 89
    return-object v0

    .line 90
    :cond_5
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_25

    .line 91
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 92
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1e
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getPort()I
    .registers 2

    .line 72
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method private greylist-max-o isUnresolved()Z
    .registers 2

    .line 100
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    instance-of v1, p1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    if-nez v1, :cond_8

    goto :goto_40

    .line 116
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 118
    .local v1, "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    .line 119
    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "sameIP":Z
    goto :goto_36

    .line 120
    .end local v2    # "sameIP":Z
    :cond_17
    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 121
    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v4, :cond_29

    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v0

    .restart local v2    # "sameIP":Z
    :goto_2a
    goto :goto_36

    .line 124
    .end local v2    # "sameIP":Z
    :cond_2b
    iget-object v2, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_35

    iget-object v2, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-nez v2, :cond_35

    move v2, v3

    goto :goto_36

    :cond_35
    move v2, v0

    .line 125
    .restart local v2    # "sameIP":Z
    :goto_36
    if-eqz v2, :cond_3f

    iget v4, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    iget v5, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    if-ne v4, v5, :cond_3f

    move v0, v3

    :cond_3f
    return v0

    .line 115
    .end local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    .end local v2    # "sameIP":Z
    :cond_40
    :goto_40
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 130
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 132
    :cond_c
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 134
    :cond_1c
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_1f

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
