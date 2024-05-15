.class Lsun/nio/ch/MembershipRegistry;
.super Ljava/lang/Object;
.source "MembershipRegistry.java"


# instance fields
.field private blacklist groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Lsun/nio/ch/MembershipKeyImpl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method blacklist add(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 5
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .line 84
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 86
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-nez v1, :cond_11

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    .line 88
    const/4 v1, 0x0

    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    goto :goto_17

    .line 90
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :goto_17
    if-nez v1, :cond_24

    .line 93
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 94
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method blacklist checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 8
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 54
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v0, :cond_51

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v0, :cond_51

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/MembershipKeyImpl;

    .line 58
    .local v2, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 61
    if-nez p3, :cond_37

    .line 62
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 63
    return-object v2

    .line 64
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Already a member to receive all packets"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_37
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 71
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 72
    return-object v2

    .line 70
    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Already have source-specific membership"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v2    # "key":Lsun/nio/ch/MembershipKeyImpl;
    :cond_50
    goto :goto_10

    .line 77
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_51
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist invalidateAll()V
    .registers 5

    .line 123
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 125
    .local v1, "group":Ljava/net/InetAddress;
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/MembershipKeyImpl;

    .line 126
    .local v3, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    .line 127
    .end local v3    # "key":Lsun/nio/ch/MembershipKeyImpl;
    goto :goto_24

    .line 128
    .end local v1    # "group":Ljava/net/InetAddress;
    :cond_34
    goto :goto_c

    .line 130
    :cond_35
    return-void
.end method

.method blacklist remove(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 6
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .line 103
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v1, :cond_2c

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_12

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 113
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 114
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_2c
    return-void
.end method
