.class public Ljava/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Proxy$Type;
    }
.end annotation


# static fields
.field public static final NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private sa:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .registers 6
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_d

    instance-of v0, p2, Ljava/net/InetSocketAddress;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    .line 95
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not compatible with address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_32
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 97
    iput-object p2, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    .line 98
    return-void
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 149
    if-eqz p1, :cond_9

    instance-of v2, p1, Ljava/net/Proxy;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    .line 150
    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    .line 151
    check-cast v0, Ljava/net/Proxy;

    .line 152
    .local v0, "p":Ljava/net/Proxy;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    if-ne v2, v3, :cond_32

    .line 153
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    if-nez v2, :cond_25

    .line 154
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    if-nez v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    .line 156
    :cond_25
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 158
    :cond_32
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_f

    .line 168
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v0

    return v0

    .line 169
    :cond_f
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_c

    .line 130
    const-string/jumbo v0, "DIRECT"

    return-object v0

    .line 131
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/net/Proxy$Type;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method
