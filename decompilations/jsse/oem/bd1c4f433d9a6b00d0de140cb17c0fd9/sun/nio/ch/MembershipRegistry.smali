.class Lsun/nio/ch/MembershipRegistry;
.super Ljava/lang/Object;
.source "MembershipRegistry.java"


# instance fields
.field private groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/MembershipKeyImpl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method add(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 5
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .prologue
    .line 84
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 86
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-nez v2, :cond_20

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    .line 88
    const/4 v1, 0x0

    .line 92
    :goto_10
    if-nez v1, :cond_1c

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_1c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void

    .line 90
    :cond_20
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    goto :goto_10
.end method

.method checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 9
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v3, :cond_55

    .line 55
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 56
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v2, :cond_55

    .line 57
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl;

    .line 58
    .local v0, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 61
    if-nez p3, :cond_3b

    .line 62
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_32

    .line 63
    return-object v0

    .line 64
    :cond_32
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Already a member to receive all packets"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_3b
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 70
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Already have source-specific membership"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_4a
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 72
    return-object v0

    .line 77
    .end local v0    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_55
    return-object v4
.end method

.method invalidateAll()V
    .registers 6

    .prologue
    .line 123
    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v4, :cond_36

    .line 124
    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 125
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/MembershipKeyImpl;

    .line 126
    .local v2, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    goto :goto_26

    .line 130
    .end local v0    # "group":Ljava/net/InetAddress;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    .end local v2    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_36
    return-void
.end method

.method remove(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 6
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .prologue
    .line 103
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 105
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v2, :cond_2c

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_12

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 113
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 114
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_2c
    return-void
.end method
