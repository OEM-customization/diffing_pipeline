.class public abstract Lsun/nio/ch/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# instance fields
.field protected keys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 57
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 58
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 59
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    .line 64
    :goto_22
    return-void

    .line 61
    :cond_23
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 62
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-static {v0}, Lsun/nio/ch/Util;->ungrowableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    goto :goto_22
.end method

.method private lockAndDoSelect(J)I
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 83
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 81
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_10
    :try_start_10
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 85
    :try_start_13
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 86
    :try_start_16
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->doSelect(J)I
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    move-result v2

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_21

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_d

    monitor-exit p0

    return v2

    .line 85
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v0

    throw v2
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_21

    .line 84
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1

    throw v0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_d
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public implCloseSelector()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_4
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    .line 112
    :try_start_7
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 113
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->implClose()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_14

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_17

    monitor-exit p0

    .line 117
    return-void

    .line 112
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v0

    throw v2
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_14

    .line 111
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1

    throw v0
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_17

    .line 110
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public keys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 68
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 69
    :cond_17
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    return-object v0
.end method

.method processDeregisterQueue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    .line 143
    .local v0, "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v0

    .line 144
    :try_start_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/SelectionKeyImpl;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    .line 149
    .local v3, "ski":Lsun/nio/ch/SelectionKeyImpl;
    :try_start_1b
    invoke-virtual {p0, v3}, Lsun/nio/ch/SelectorImpl;->implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1e
    .catch Ljava/net/SocketException; {:try_start_1b .. :try_end_1e} :catch_25
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 153
    :try_start_1e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_f

    .line 143
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v3    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_22
    move-exception v4

    monitor-exit v0

    throw v4

    .line 150
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v3    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catch_25
    move-exception v2

    .line 151
    .local v2, "se":Ljava/net/SocketException;
    :try_start_26
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Error deregistering key"

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2f

    .line 152
    .end local v2    # "se":Ljava/net/SocketException;
    :catchall_2f
    move-exception v4

    .line 153
    :try_start_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 152
    throw v4
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_22

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v3    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_34
    monitor-exit v0

    .line 158
    return-void
.end method

.method public putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .registers 3
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .prologue
    .line 121
    return-void
.end method

.method protected final register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .param p1, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "ops"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v1, p1, Lsun/nio/ch/SelChImpl;

    if-nez v1, :cond_a

    .line 128
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 129
    :cond_a
    new-instance v0, Lsun/nio/ch/SelectionKeyImpl;

    check-cast p1, Lsun/nio/ch/SelChImpl;

    .end local p1    # "ch":Ljava/nio/channels/spi/AbstractSelectableChannel;
    invoke-direct {v0, p1, p0}, Lsun/nio/ch/SelectionKeyImpl;-><init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V

    .line 130
    .local v0, "k":Lsun/nio/ch/SelectionKeyImpl;
    invoke-virtual {v0, p3}, Lsun/nio/ch/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1

    .line 132
    :try_start_17
    invoke-virtual {p0, v0}, Lsun/nio/ch/SelectorImpl;->implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    monitor-exit v1

    .line 134
    invoke-virtual {v0, p2}, Lsun/nio/ch/SelectionKeyImpl;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 135
    return-object v0

    .line 131
    :catchall_1f
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public select()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->select(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .registers 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 95
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_f
    cmp-long v0, p1, v2

    if-nez v0, :cond_15

    const-wide/16 p1, -0x1

    .end local p1    # "timeout":J
    :cond_15
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0
.end method

.method public selectNow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 74
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 75
    :cond_17
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public abstract wakeup()Ljava/nio/channels/Selector;
.end method
