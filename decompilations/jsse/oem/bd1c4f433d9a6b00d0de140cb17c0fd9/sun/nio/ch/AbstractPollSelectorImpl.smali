.class abstract Lsun/nio/ch/AbstractPollSelectorImpl;
.super Lsun/nio/ch/SelectorImpl;
.source "AbstractPollSelectorImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final INIT_CAP:I

.field protected channelArray:[Lsun/nio/ch/SelectionKeyImpl;

.field protected channelOffset:I

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field pollWrapper:Lsun/nio/ch/PollArrayWrapper;

.field protected totalChannels:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/AbstractPollSelectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;II)V
    .registers 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "channels"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Lsun/nio/ch/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->INIT_CAP:I

    .line 51
    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 57
    iput-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    .line 64
    iput p2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 65
    iput p3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 66
    return-void
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implClose()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 84
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_4
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_27

    if-eqz v3, :cond_a

    monitor-exit v4

    .line 86
    return-void

    .line 87
    :cond_a
    const/4 v3, 0x1

    :try_start_b
    iput-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 89
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_f
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_4f

    .line 90
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v2, v3, v0

    .line 91
    .local v2, "ski":Lsun/nio/ch/SelectionKeyImpl;
    sget-boolean v3, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v3

    if-ne v3, v5, :cond_2a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_27

    .line 84
    .end local v0    # "i":I
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3

    .line 92
    .restart local v0    # "i":I
    .restart local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_2a
    const/4 v3, -0x1

    :try_start_2b
    invoke-virtual {v2, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 93
    invoke-virtual {p0, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 94
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 95
    .local v1, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4c

    .line 96
    check-cast v1, Lsun/nio/ch/SelChImpl;

    .end local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v1}, Lsun/nio/ch/SelChImpl;->kill()V

    .line 89
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 98
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_4f
    invoke-virtual {p0}, Lsun/nio/ch/AbstractPollSelectorImpl;->implCloseInterrupt()V

    .line 99
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3}, Lsun/nio/ch/PollArrayWrapper;->free()V

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 103
    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I
    :try_end_63
    .catchall {:try_start_2b .. :try_end_63} :catchall_27

    monitor-exit v4

    .line 105
    return-void
.end method

.method protected abstract implCloseInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .registers 8
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v1

    .line 169
    .local v1, "i":I
    sget-boolean v3, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_10

    if-gez v1, :cond_10

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 170
    :cond_10
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_75

    .line 172
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    .line 173
    .local v0, "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aput-object v0, v3, v1

    .line 174
    invoke-virtual {v0, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 175
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 176
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    .line 177
    iget-object v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 176
    invoke-static {v3, v4, v5, v1}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    .line 182
    .end local v0    # "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    :goto_35
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 183
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 184
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    .line 185
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 187
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0, p1}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 190
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    .line 191
    .local v2, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_74

    .line 192
    check-cast v2, Lsun/nio/ch/SelChImpl;

    .end local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v2}, Lsun/nio/ch/SelChImpl;->kill()V

    .line 193
    :cond_74
    return-void

    .line 179
    :cond_75
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    goto :goto_35
.end method

.method protected implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    .registers 8
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 139
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 140
    :try_start_3
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v3, :cond_10

    .line 141
    new-instance v3, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 139
    :catchall_d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 144
    :cond_10
    :try_start_10
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    array-length v3, v3

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ne v3, v5, :cond_35

    .line 146
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v3, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    mul-int/lit8 v1, v3, 0x2

    .line 147
    .local v1, "newSize":I
    new-array v2, v1, [Lsun/nio/ch/SelectionKeyImpl;

    .line 149
    .local v2, "temp":[Lsun/nio/ch/SelectionKeyImpl;
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_21
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_2e

    .line 150
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 151
    :cond_2e
    iput-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 153
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->grow(I)V

    .line 155
    .end local v0    # "i":I
    .end local v1    # "newSize":I
    .end local v2    # "temp":[Lsun/nio/ch/SelectionKeyImpl;
    :cond_35
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    aput-object p1, v3, v5

    .line 156
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 157
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget-object v5, p1, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-virtual {v3, v5}, Lsun/nio/ch/PollArrayWrapper;->addEntry(Lsun/nio/ch/SelChImpl;)V

    .line 158
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 159
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_d

    monitor-exit v4

    .line 161
    return-void
.end method

.method public putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .registers 6
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v0, :cond_10

    .line 71
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 69
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_10
    :try_start_10
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d

    monitor-exit v1

    .line 74
    return-void
.end method

.method protected updateSelectedKeys()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "numKeysUpdated":I
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_4
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v4, :cond_46

    .line 118
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v2

    .line 119
    .local v2, "rOps":I
    if-eqz v2, :cond_2b

    .line 120
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v4, v0

    .line 121
    .local v3, "sk":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0, v6}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 122
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 123
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 117
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 127
    .restart local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_2e
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    .line 128
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v4

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 129
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 135
    .end local v2    # "rOps":I
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_46
    return v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    .line 78
    return-object p0
.end method
