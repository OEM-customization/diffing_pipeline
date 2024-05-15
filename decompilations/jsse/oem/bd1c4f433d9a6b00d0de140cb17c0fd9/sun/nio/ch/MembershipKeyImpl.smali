.class Lsun/nio/ch/MembershipKeyImpl;
.super Ljava/nio/channels/MembershipKey;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/MembershipKeyImpl$Type4;,
        Lsun/nio/ch/MembershipKeyImpl$Type6;
    }
.end annotation


# instance fields
.field private blockedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ch:Ljava/nio/channels/MulticastChannel;

.field private final group:Ljava/net/InetAddress;

.field private final interf:Ljava/net/NetworkInterface;

.field private final source:Ljava/net/InetAddress;

.field private stateLock:Ljava/lang/Object;

.field private volatile valid:Z


# direct methods
.method private constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "ch"    # Ljava/nio/channels/MulticastChannel;
    .param p2, "group"    # Ljava/net/InetAddress;
    .param p3, "interf"    # Ljava/net/NetworkInterface;
    .param p4, "source"    # Ljava/net/InetAddress;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/nio/channels/MembershipKey;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    .line 61
    iput-object p2, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    .line 62
    iput-object p3, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    .line 63
    iput-object p4, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 6
    .param p1, "ch"    # Ljava/nio/channels/MulticastChannel;
    .param p2, "group"    # Ljava/net/InetAddress;
    .param p3, "interf"    # Ljava/net/NetworkInterface;
    .param p4, "source"    # Ljava/net/InetAddress;
    .param p5, "-this4"    # Lsun/nio/ch/MembershipKeyImpl;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 4
    .param p1, "toBlock"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-eqz v0, :cond_d

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "key is source-specific"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_d
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_10
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_37

    move-result v0

    if-eqz v0, :cond_1e

    monitor-exit v1

    .line 180
    return-object p0

    .line 183
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->block(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    .line 186
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-nez v0, :cond_30

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    .line 188
    :cond_30
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_37

    monitor-exit v1

    .line 190
    return-object p0

    .line 177
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public channel()Ljava/nio/channels/MulticastChannel;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    return-object v0
.end method

.method public drop()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0}, Lsun/nio/ch/DatagramChannelImpl;->drop(Lsun/nio/ch/MembershipKeyImpl;)V

    .line 148
    return-void
.end method

.method public group()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    return-object v0
.end method

.method invalidate()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    .line 143
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    return v0
.end method

.method public networkInterface()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public sourceAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x2c

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-eqz v1, :cond_33

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_33
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unblock(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 5
    .param p1, "toUnblock"    # Ljava/net/InetAddress;

    .prologue
    .line 195
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 197
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1a

    .line 195
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 199
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->unblock(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    .line 201
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_1a

    monitor-exit v1

    .line 203
    return-object p0
.end method
